import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/weight_utils.dart';
import '../../data/blocks_repository.dart';
import '../../data/lifts_repository.dart';
import '../../data/maxes_repository.dart';
import '../../data/sessions_repository.dart';
import '../../domain/block.dart';
import '../../domain/enums.dart';
import '../../domain/lift.dart';
import '../../domain/max.dart';
import '../../domain/prescription.dart';
import '../../domain/session.dart';
import '../auth/auth_providers.dart';
import 'today_providers.dart';

class TodayScreen extends ConsumerStatefulWidget {
  const TodayScreen({super.key});

  @override
  ConsumerState<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends ConsumerState<TodayScreen> {
  bool _finishing = false;

  @override
  Widget build(BuildContext context) {
    final sessionAsync = ref.watch(todaySessionProvider);
    final blockAsync = ref.watch(todayBlockProvider);
    final profile = ref.watch(currentUserProfileProvider).valueOrNull;
    final liftsMap = ref.watch(liftsMapProvider);
    final units = profile?.units ?? Units.kg;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Today'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showDateInfo(context),
          ),
        ],
      ),
      body: sessionAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (session) {
          if (session == null) return _RestDayView(date: DateTime.now());
          final block = blockAsync.valueOrNull;
          return _buildSession(context, session, block, units, liftsMap);
        },
      ),
    );
  }

  void _showDateInfo(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Today'),
        content: Text(DateFormat('EEEE, MMMM d').format(DateTime.now())),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget _buildSession(
    BuildContext context,
    TrainingSession session,
    Block? block,
    Units units,
    Map<String, Lift> liftsMap,
  ) {
    final isCompleted = session.status == SessionStatus.completed;
    final dayName = _dayName(session, block);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _SessionHeader(session: session, dayName: dayName, block: block),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            itemCount: session.lifts.length,
            itemBuilder: (ctx, liftIdx) {
              final sl = session.lifts[liftIdx];
              final lift = liftsMap[sl.liftId];
              final tm = block?.trainingMaxes[sl.liftId];
              return _LiftCard(
                sessionLift: sl,
                liftName: lift?.name ?? sl.liftId,
                trainingMax: tm,
                units: units,
                isSessionCompleted: isCompleted,
                onSetTap: (setIdx) =>
                    _onSetTap(context, session, block, liftIdx, setIdx, tm, units),
              );
            },
          ),
        ),
        _FinishBar(
          isCompleted: isCompleted,
          busy: _finishing,
          onFinish: () => _finishSession(session),
        ),
      ],
    );
  }

  String _dayName(TrainingSession session, Block? block) {
    if (block == null) return 'Training';
    final weeks = block.weeks;
    if (session.weekIndex >= weeks.length) return 'Training';
    final week = weeks[session.weekIndex];
    if (session.dayIndex >= week.days.length) return 'Training';
    return week.days[session.dayIndex].name;
  }

  Future<void> _onSetTap(
    BuildContext context,
    TrainingSession session,
    Block? block,
    int liftIdx,
    int setIdx,
    double? tm,
    Units units,
  ) async {
    final sl = session.lifts[liftIdx];

    // Tap on a done set → undo it
    if (setIdx < sl.actuals.length && sl.actuals[setIdx].done) {
      await _undoSet(session, liftIdx, setIdx);
      return;
    }

    final prx = sl.prescription;

    if (prx is PercentPrescription) {
      final weight = tm != null ? prescribedWeight(tm, prx.target, units) : 0.0;
      await _markSetDone(session, liftIdx, setIdx, weight: weight, reps: prx.reps);
    } else if (prx is WeightPrescription) {
      await _markSetDone(
          session, liftIdx, setIdx, weight: prx.target, reps: prx.reps,);
    } else if (prx is AmrapPrescription) {
      final weight = tm != null ? prescribedWeight(tm, prx.target, units) : 0.0;
      if (!context.mounted) return;
      final reps = await _showAmrapDialog(context, weight, units);
      if (reps == null || !context.mounted) return;
      await _handleAmrap(
          context, session, block, liftIdx, setIdx, weight, reps, units,);
    } else if (prx is RpePrescription) {
      if (!context.mounted) return;
      final result = await _showRpeDialog(context, prx.target, prx.reps, units);
      if (result == null) return;
      await _markSetDone(
        session,
        liftIdx,
        setIdx,
        weight: result.$1,
        reps: result.$2,
        rpe: prx.target,
      );
    }
  }

  Future<void> _markSetDone(
    TrainingSession session,
    int liftIdx,
    int setIdx, {
    required double weight,
    required int reps,
    double? rpe,
  }) async {
    final lift = session.lifts[liftIdx];
    final actuals = List<ActualSet>.of(lift.actuals);
    while (actuals.length <= setIdx) {
      actuals.add(const ActualSet(weight: 0, reps: 0));
    }
    actuals[setIdx] = ActualSet(weight: weight, reps: reps, rpe: rpe, done: true);

    final newLifts = List<SessionLift>.of(session.lifts);
    newLifts[liftIdx] = lift.copyWith(actuals: actuals);
    await ref.read(sessionsRepositoryProvider).update(
          session.copyWith(lifts: newLifts, status: SessionStatus.inProgress),
        );
  }

  Future<void> _undoSet(TrainingSession session, int liftIdx, int setIdx) async {
    final lift = session.lifts[liftIdx];
    if (setIdx >= lift.actuals.length) return;
    final actuals = List<ActualSet>.of(lift.actuals);
    actuals[setIdx] = actuals[setIdx].copyWith(done: false, missed: false);

    final newLifts = List<SessionLift>.of(session.lifts);
    newLifts[liftIdx] = lift.copyWith(actuals: actuals);
    await ref
        .read(sessionsRepositoryProvider)
        .update(session.copyWith(lifts: newLifts));
  }

  Future<void> _handleAmrap(
    BuildContext context,
    TrainingSession session,
    Block? block,
    int liftIdx,
    int setIdx,
    double weight,
    int reps,
    Units units,
  ) async {
    final e1rm = epley(weight, reps);
    final lift = session.lifts[liftIdx];
    final actuals = List<ActualSet>.of(lift.actuals);
    while (actuals.length <= setIdx) {
      actuals.add(const ActualSet(weight: 0, reps: 0));
    }
    actuals[setIdx] = ActualSet(weight: weight, reps: reps, done: true);

    final newLifts = List<SessionLift>.of(session.lifts);
    newLifts[liftIdx] = lift.copyWith(actuals: actuals, topSetE1RM: e1rm);
    await ref.read(sessionsRepositoryProvider).update(
          session.copyWith(lifts: newLifts, status: SessionStatus.inProgress),
        );

    if (block == null || !context.mounted) return;
    final currentTM = block.trainingMaxes[lift.liftId] ?? 0;
    if (e1rm <= currentTM * 1.025) return;

    final promote = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('New training max?'),
        content: Text(
          'Your e1RM is ${formatWeight(e1rm, units)}.\n'
          'Current training max: ${formatWeight(currentTM, units)}.\n\n'
          'Update training max for future sessions?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Skip'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Update'),
          ),
        ],
      ),
    );

    if (promote != true || !context.mounted) return;
    await _promoteTrainingMax(block, lift.liftId, e1rm, session.id);
  }

  Future<void> _promoteTrainingMax(
    Block block,
    String liftId,
    double e1rm,
    String sourceSessionId,
  ) async {
    final uid = ref.read(currentUserProvider)?.uid;
    if (uid == null) return;

    await ref.read(maxesRepositoryProvider).create(
          Max(
            id: '',
            ownerId: uid,
            liftId: liftId,
            value: e1rm,
            kind: MaxKind.training,
            date: DateTime.now(),
            sourceSessionId: sourceSessionId,
          ),
        );

    final newMaxes = Map<String, double>.of(block.trainingMaxes);
    newMaxes[liftId] = e1rm;
    await ref
        .read(blocksRepositoryProvider)
        .update(block.copyWith(trainingMaxes: newMaxes));
  }

  Future<void> _finishSession(TrainingSession session) async {
    setState(() => _finishing = true);
    await ref.read(sessionsRepositoryProvider).update(
          session.copyWith(status: SessionStatus.completed),
        );
    if (mounted) setState(() => _finishing = false);
  }

  Future<int?> _showAmrapDialog(
    BuildContext context,
    double weight,
    Units units,
  ) async {
    var reps = 5;
    return showDialog<int>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setStateInner) => AlertDialog(
          title: Text('AMRAP @ ${formatWeight(weight, units)}'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed:
                    reps > 1 ? () => setStateInner(() => reps--) : null,
                icon: const Icon(Icons.remove_circle_outline),
                iconSize: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '$reps',
                  style: Theme.of(ctx).textTheme.displaySmall,
                ),
              ),
              IconButton(
                onPressed: () => setStateInner(() => reps++),
                icon: const Icon(Icons.add_circle_outline),
                iconSize: 32,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, reps),
              child: const Text('Log'),
            ),
          ],
        ),
      ),
    );
  }

  Future<(double, int)?> _showRpeDialog(
    BuildContext context,
    double rpe,
    int reps,
    Units units,
  ) async {
    final controller = TextEditingController();
    final weight = await showDialog<double>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('$reps reps @ RPE $rpe'),
        content: TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: InputDecoration(
            labelText: 'Weight (${units.name})',
            suffix: Text(units.name),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              final w = double.tryParse(controller.text.trim());
              if (w != null && w > 0) Navigator.pop(ctx, w);
            },
            child: const Text('Log'),
          ),
        ],
      ),
    );
    controller.dispose();
    if (weight == null) return null;
    return (weight, reps);
  }
}

// ---------------------------------------------------------------------------

class _SessionHeader extends StatelessWidget {
  const _SessionHeader({
    required this.session,
    required this.dayName,
    required this.block,
  });

  final TrainingSession session;
  final String dayName;
  final Block? block;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Week ${session.weekIndex + 1} · Day ${session.dayIndex + 1}',
            style: theme.textTheme.labelMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 2),
          Text(dayName, style: theme.textTheme.headlineSmall),
        ],
      ),
    );
  }
}

class _FinishBar extends StatelessWidget {
  const _FinishBar({
    required this.isCompleted,
    required this.busy,
    required this.onFinish,
  });

  final bool isCompleted;
  final bool busy;
  final VoidCallback onFinish;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: isCompleted
            ? OutlinedButton.icon(
                onPressed: null,
                icon: const Icon(Icons.check_circle),
                label: const Text('Session complete'),
              )
            : FilledButton.icon(
                onPressed: busy ? null : onFinish,
                icon: busy
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.check_circle_outline),
                label: const Text('Finish session'),
              ),
      ),
    );
  }
}

class _LiftCard extends StatelessWidget {
  const _LiftCard({
    required this.sessionLift,
    required this.liftName,
    required this.trainingMax,
    required this.units,
    required this.isSessionCompleted,
    required this.onSetTap,
  });

  final SessionLift sessionLift;
  final String liftName;
  final double? trainingMax;
  final Units units;
  final bool isSessionCompleted;
  final void Function(int setIdx) onSetTap;

  String _prescriptionSummary() {
    final p = sessionLift.prescription;
    if (p is PercentPrescription) {
      final pct = p.target % 1 == 0
          ? p.target.toInt().toString()
          : p.target.toStringAsFixed(1);
      return '${p.sets}×${p.reps} @ $pct%';
    }
    if (p is AmrapPrescription) {
      return 'AMRAP @ ${p.target.toInt()}%';
    }
    if (p is RpePrescription) {
      return '${p.sets}×${p.reps} @ RPE ${p.target}';
    }
    if (p is WeightPrescription) {
      return '${p.sets}×${p.reps} @ ${formatWeight(p.target, units)}';
    }
    return '';
  }

  int _setCount() {
    final p = sessionLift.prescription;
    if (p is PercentPrescription) return p.sets;
    if (p is AmrapPrescription) return p.sets;
    if (p is RpePrescription) return p.sets;
    if (p is WeightPrescription) return p.sets;
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = _setCount();

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(liftName, style: theme.textTheme.titleMedium),
            subtitle: Text(_prescriptionSummary()),
            visualDensity: VisualDensity.compact,
          ),
          const Divider(height: 1),
          for (var i = 0; i < count; i++)
            _SetRow(
              setIndex: i,
              sessionLift: sessionLift,
              trainingMax: trainingMax,
              units: units,
              isSessionCompleted: isSessionCompleted,
              onTap: () => onSetTap(i),
            ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

class _SetRow extends StatelessWidget {
  const _SetRow({
    required this.setIndex,
    required this.sessionLift,
    required this.trainingMax,
    required this.units,
    required this.isSessionCompleted,
    required this.onTap,
  });

  final int setIndex;
  final SessionLift sessionLift;
  final double? trainingMax;
  final Units units;
  final bool isSessionCompleted;
  final VoidCallback onTap;

  bool get _isDone =>
      setIndex < sessionLift.actuals.length &&
      sessionLift.actuals[setIndex].done;

  ActualSet? get _actual =>
      setIndex < sessionLift.actuals.length
          ? sessionLift.actuals[setIndex]
          : null;

  String _weightLabel() {
    if (_isDone) {
      final a = _actual!;
      return formatWeight(a.weight, units);
    }
    final p = sessionLift.prescription;
    final tm = trainingMax;
    if (p is PercentPrescription) {
      return tm != null
          ? formatWeight(prescribedWeight(tm, p.target, units), units)
          : '? ${units.name}';
    }
    if (p is AmrapPrescription) {
      return tm != null
          ? formatWeight(prescribedWeight(tm, p.target, units), units)
          : '? ${units.name}';
    }
    if (p is WeightPrescription) return formatWeight(p.target, units);
    if (p is RpePrescription) return '? ${units.name}';
    return '?';
  }

  String _repsLabel() {
    final p = sessionLift.prescription;
    if (_isDone) {
      final a = _actual!;
      final rpeStr = a.rpe != null ? '  RPE ${a.rpe}' : '';
      return '× ${a.reps}$rpeStr';
    }
    if (p is PercentPrescription) return '× ${p.reps}';
    if (p is AmrapPrescription) return 'AMRAP';
    if (p is RpePrescription) return '× ${p.reps}  RPE ${p.target}';
    if (p is WeightPrescription) return '× ${p.reps}';
    return '';
  }

  String _setLabel() {
    final p = sessionLift.prescription;
    if (p is AmrapPrescription) return 'AMRAP';
    return 'Set ${setIndex + 1}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final done = _isDone;

    return InkWell(
      onTap: isSessionCompleted ? null : onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 56,
              child: Text(
                _setLabel(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    _weightLabel(),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: done ? theme.colorScheme.outline : null,
                      decoration: done ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _repsLabel(),
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Icon(
              done ? Icons.check_circle : Icons.radio_button_unchecked,
              color: done
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outlineVariant,
            ),
          ],
        ),
      ),
    );
  }
}

class _RestDayView extends StatelessWidget {
  const _RestDayView({required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.self_improvement,
              size: 72,
              color: theme.colorScheme.primary.withAlpha(120),
            ),
            const SizedBox(height: 16),
            Text('Rest day', style: theme.textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text(
              'No session scheduled for ${DateFormat('EEEE').format(date)}.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
