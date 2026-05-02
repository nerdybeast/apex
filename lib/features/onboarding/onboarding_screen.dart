import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/firestore_refs.dart';
import '../../data/maxes_repository.dart';
import '../../data/seed/dev_block.dart';
import '../../data/seed/lifts_seed.dart';
import '../../data/users_repository.dart';
import '../../domain/enums.dart';
import '../../domain/max.dart';
import '../../domain/user_profile.dart';
import '../auth/auth_providers.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _pageController = PageController();
  int _page = 0;

  Sport _sport = Sport.powerlifting;
  Units _units = Units.kg;
  Sex _sex = Sex.m;
  bool _busy = false;

  final _plControllers = {
    LiftIds.squat: TextEditingController(),
    LiftIds.bench: TextEditingController(),
    LiftIds.deadlift: TextEditingController(),
  };
  final _olControllers = {
    LiftIds.snatch: TextEditingController(),
    LiftIds.cleanAndJerk: TextEditingController(),
  };

  static const _plLabels = {
    LiftIds.squat: 'Back Squat',
    LiftIds.bench: 'Bench Press',
    LiftIds.deadlift: 'Deadlift',
  };
  static const _olLabels = {
    LiftIds.snatch: 'Snatch',
    LiftIds.cleanAndJerk: 'Clean & Jerk',
  };

  Map<String, TextEditingController> get _activeControllers =>
      _sport == Sport.powerlifting ? _plControllers : _olControllers;

  Map<String, String> get _activeLabels =>
      _sport == Sport.powerlifting ? _plLabels : _olLabels;

  @override
  void dispose() {
    _pageController.dispose();
    for (final c in _plControllers.values) {
      c.dispose();
    }
    for (final c in _olControllers.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _next() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() => _page++);
  }

  void _back() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() => _page--);
  }

  Future<void> _finish() async {
    final user = ref.read(currentUserProvider);
    if (user == null) return;
    setState(() => _busy = true);
    try {
      final trainingMaxes = <String, double>{};
      for (final entry in _activeControllers.entries) {
        final v = double.tryParse(entry.value.text.trim());
        if (v != null && v > 0) trainingMaxes[entry.key] = v;
      }

      // Save initial training max documents
      final maxesRepo = ref.read(maxesRepositoryProvider);
      for (final entry in trainingMaxes.entries) {
        await maxesRepo.create(
          Max(
            id: '',
            ownerId: user.uid,
            liftId: entry.key,
            value: entry.value,
            kind: MaxKind.training,
            date: DateTime.now(),
          ),
        );
      }

      // Create the hardcoded dev block + 4 weeks of sessions
      await createDevBlock(
        db: ref.read(firestoreProvider),
        uid: user.uid,
        sport: _sport,
        trainingMaxes: trainingMaxes,
      );

      // Save profile last — triggers the router redirect to Today
      await ref.read(usersRepositoryProvider).upsert(
            UserProfile(
              uid: user.uid,
              displayName: user.displayName ?? user.email ?? 'Lifter',
              units: _units,
              sex: _sex,
              role: UserRole.athlete,
              sport: _sport,
            ),
          );
    } catch (_) {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: _page > 0
            ? IconButton(
                onPressed: _busy ? null : _back,
                icon: const Icon(Icons.arrow_back),
              )
            : null,
        title: Text(_page == 0 ? 'Welcome to APEX' : 'Set Up Your Profile'),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _BasicsPage(
            sport: _sport,
            units: _units,
            sex: _sex,
            onSportChanged: (v) => setState(() => _sport = v),
            onUnitsChanged: (v) => setState(() => _units = v),
            onSexChanged: (v) => setState(() => _sex = v),
            onNext: _next,
          ),
          _MaxesPage(
            controllers: _activeControllers,
            labels: _activeLabels,
            units: _units,
            busy: _busy,
            onFinish: _finish,
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 2; i++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _page == i ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: _page == i
                        ? theme.colorScheme.primary
                        : theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BasicsPage extends StatelessWidget {
  const _BasicsPage({
    required this.sport,
    required this.units,
    required this.sex,
    required this.onSportChanged,
    required this.onUnitsChanged,
    required this.onSexChanged,
    required this.onNext,
  });

  final Sport sport;
  final Units units;
  final Sex sex;
  final ValueChanged<Sport> onSportChanged;
  final ValueChanged<Units> onUnitsChanged;
  final ValueChanged<Sex> onSexChanged;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sport'),
            const SizedBox(height: 8),
            SegmentedButton<Sport>(
              segments: const [
                ButtonSegment(
                  value: Sport.powerlifting,
                  label: Text('Powerlifting'),
                ),
                ButtonSegment(
                  value: Sport.weightlifting,
                  label: Text('Weightlifting'),
                ),
              ],
              selected: {sport},
              onSelectionChanged: (s) => onSportChanged(s.first),
            ),
            const SizedBox(height: 24),
            const Text('Units'),
            const SizedBox(height: 8),
            SegmentedButton<Units>(
              segments: const [
                ButtonSegment(value: Units.kg, label: Text('kg')),
                ButtonSegment(value: Units.lb, label: Text('lb')),
              ],
              selected: {units},
              onSelectionChanged: (s) => onUnitsChanged(s.first),
            ),
            const SizedBox(height: 24),
            const Text('Sex'),
            const SizedBox(height: 8),
            SegmentedButton<Sex>(
              segments: const [
                ButtonSegment(value: Sex.m, label: Text('Male')),
                ButtonSegment(value: Sex.f, label: Text('Female')),
              ],
              selected: {sex},
              onSelectionChanged: (s) => onSexChanged(s.first),
            ),
            const Spacer(),
            FilledButton(
              onPressed: onNext,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class _MaxesPage extends StatelessWidget {
  const _MaxesPage({
    required this.controllers,
    required this.labels,
    required this.units,
    required this.busy,
    required this.onFinish,
  });

  final Map<String, TextEditingController> controllers;
  final Map<String, String> labels;
  final Units units;
  final bool busy;
  final VoidCallback onFinish;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Current Training Maxes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Enter your current training maxes in ${units.name}. '
              'Skip any you don\'t know — you can set them later.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            for (final entry in controllers.entries) ...[
              TextField(
                controller: entry.value,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                ],
                decoration: InputDecoration(
                  labelText: labels[entry.key] ?? entry.key,
                  suffix: Text(units.name),
                ),
              ),
              const SizedBox(height: 16),
            ],
            const Spacer(),
            FilledButton(
              onPressed: busy ? null : onFinish,
              child: busy
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

