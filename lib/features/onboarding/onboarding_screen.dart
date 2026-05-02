import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/users_repository.dart';
import '../../domain/enums.dart';
import '../../domain/user_profile.dart';
import '../auth/auth_providers.dart';

/// Minimal stub. Slice 1 work: collect sport, units, current 1RMs (or
/// skip), meet date (or skip). Creates the user document and seeds maxes.
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  Sport _sport = Sport.powerlifting;
  Units _units = Units.kg;
  Sex _sex = Sex.m;
  bool _busy = false;

  Future<void> _finish() async {
    final user = ref.read(currentUserProvider);
    if (user == null) return;
    setState(() => _busy = true);
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to APEX')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Sport'),
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
                selected: {_sport},
                onSelectionChanged: (s) => setState(() => _sport = s.first),
              ),
              const SizedBox(height: 16),
              const Text('Units'),
              SegmentedButton<Units>(
                segments: const [
                  ButtonSegment(value: Units.kg, label: Text('kg')),
                  ButtonSegment(value: Units.lb, label: Text('lb')),
                ],
                selected: {_units},
                onSelectionChanged: (s) => setState(() => _units = s.first),
              ),
              const SizedBox(height: 16),
              const Text('Sex'),
              SegmentedButton<Sex>(
                segments: const [
                  ButtonSegment(value: Sex.m, label: Text('M')),
                  ButtonSegment(value: Sex.f, label: Text('F')),
                ],
                selected: {_sex},
                onSelectionChanged: (s) => setState(() => _sex = s.first),
              ),
              const Spacer(),
              FilledButton(
                onPressed: _busy ? null : _finish,
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
