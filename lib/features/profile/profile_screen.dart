import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/auth_providers.dart';

/// Units, sport, federation, weight class, bodyweight log. Sign out.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(currentUserProfileProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: profile.when(
        data: (p) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (p != null) ...[
                Text('Name: ${p.displayName}'),
                Text('Sport: ${p.sport?.name ?? '-'}'),
                Text('Units: ${p.units.name}'),
              ] else
                const Text('No profile.'),
              const Spacer(),
              OutlinedButton(
                onPressed: () => ref.read(firebaseAuthProvider).signOut(),
                child: const Text('Sign out'),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
      ),
    );
  }
}
