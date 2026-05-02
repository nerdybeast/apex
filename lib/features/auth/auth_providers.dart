import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/users_repository.dart';
import '../../domain/user_profile.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final authStateChangesProvider = StreamProvider<User?>(
  (ref) => ref.watch(firebaseAuthProvider).authStateChanges(),
);

final currentUserProvider = Provider<User?>(
  (ref) => ref.watch(authStateChangesProvider).valueOrNull,
);

/// Watches the signed-in user's profile document. Null while loading or
/// when the user hasn't completed onboarding yet (no doc exists).
final currentUserProfileProvider = StreamProvider<UserProfile?>((ref) {
  final user = ref.watch(currentUserProvider);
  if (user == null) return Stream<UserProfile?>.value(null);
  return ref.watch(usersRepositoryProvider).watch(user.uid);
});
