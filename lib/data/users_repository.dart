import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user_profile.dart';
import 'firestore_refs.dart';

class UsersRepository {
  UsersRepository(this._db);

  final FirebaseFirestore _db;

  DocumentReference<UserProfile> _doc(String uid) => _db
      .collection(FirestoreCollections.users)
      .doc(uid)
      .withConverter<UserProfile>(
        fromFirestore: (snap, _) =>
            UserProfile.fromJson({...snap.data()!, 'uid': snap.id}),
        toFirestore: (u, _) => u.toJson()..remove('uid'),
      );

  Stream<UserProfile?> watch(String uid) =>
      _doc(uid).snapshots().map((s) => s.data());

  Future<UserProfile?> get(String uid) async {
    final snap = await _doc(uid).get();
    return snap.data();
  }

  Future<void> upsert(UserProfile user) => _doc(user.uid).set(user);
}

final usersRepositoryProvider = Provider<UsersRepository>(
  (ref) => UsersRepository(ref.watch(firestoreProvider)),
);
