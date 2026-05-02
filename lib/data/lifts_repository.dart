import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/enums.dart';
import '../domain/lift.dart';
import 'firestore_refs.dart';

class LiftsRepository {
  LiftsRepository(this._db);

  final FirebaseFirestore _db;

  CollectionReference<Lift> get _col => _db
      .collection(FirestoreCollections.lifts)
      .withConverter<Lift>(
        fromFirestore: (snap, _) =>
            Lift.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (lift, _) => lift.toJson()..remove('id'),
      );

  Stream<List<Lift>> watchAll() => _col.snapshots().map(
        (s) => s.docs.map((d) => d.data()).toList(),
      );

  Stream<List<Lift>> watchBySport(Sport sport) => _col
      .where('sport', isEqualTo: sport.name)
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Future<Lift?> get(String id) async {
    final snap = await _col.doc(id).get();
    return snap.data();
  }

  /// Idempotent: writes the lift at the given id, replacing any existing.
  /// Used by the seed routine. Not callable from client in production
  /// (rules deny writes); call from a one-off admin script or trusted env.
  Future<void> upsert(Lift lift) => _col.doc(lift.id).set(lift);
}

final liftsRepositoryProvider = Provider<LiftsRepository>(
  (ref) => LiftsRepository(ref.watch(firestoreProvider)),
);

final allLiftsProvider = StreamProvider<List<Lift>>(
  (ref) => ref.watch(liftsRepositoryProvider).watchAll(),
);
