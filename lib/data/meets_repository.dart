import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/meet.dart';
import 'firestore_refs.dart';

class MeetsRepository {
  MeetsRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String _uid;

  CollectionReference<Meet> get _col => _db
      .collection(FirestoreCollections.meets)
      .withConverter<Meet>(
        fromFirestore: (snap, _) =>
            Meet.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (m, _) => m.toJson()..remove('id'),
      );

  Stream<List<Meet>> watchAll() => _col
      .where('ownerId', isEqualTo: _uid)
      .orderBy('date')
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Stream<Meet?> watch(String id) =>
      _col.doc(id).snapshots().map((s) => s.data());

  Future<String> create(Meet meet) async {
    final ref = await _col.add(meet);
    return ref.id;
  }

  Future<void> update(Meet meet) => _col.doc(meet.id).set(meet);

  Future<void> delete(String id) => _col.doc(id).delete();
}
