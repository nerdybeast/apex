import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/max.dart';
import 'firestore_refs.dart';

class MaxesRepository {
  MaxesRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String _uid;

  CollectionReference<Max> get _col => _db
      .collection(FirestoreCollections.maxes)
      .withConverter<Max>(
        fromFirestore: (snap, _) =>
            Max.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (m, _) => m.toJson()..remove('id'),
      );

  Stream<List<Max>> watchForLift(String liftId) => _col
      .where('ownerId', isEqualTo: _uid)
      .where('liftId', isEqualTo: liftId)
      .orderBy('date')
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Stream<List<Max>> watchAll() => _col
      .where('ownerId', isEqualTo: _uid)
      .orderBy('date')
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Future<String> create(Max max) async {
    final ref = await _col.add(max);
    return ref.id;
  }

  Future<void> update(Max max) => _col.doc(max.id).set(max);

  Future<void> delete(String id) => _col.doc(id).delete();
}
