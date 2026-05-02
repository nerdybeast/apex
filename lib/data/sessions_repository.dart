import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/session.dart';
import 'firestore_refs.dart';

class SessionsRepository {
  SessionsRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String _uid;

  CollectionReference<TrainingSession> get _col => _db
      .collection(FirestoreCollections.sessions)
      .withConverter<TrainingSession>(
        fromFirestore: (snap, _) =>
            TrainingSession.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (s, _) => s.toJson()..remove('id'),
      );

  Stream<List<TrainingSession>> watchForBlock(String blockId) => _col
      .where('ownerId', isEqualTo: _uid)
      .where('blockId', isEqualTo: blockId)
      .orderBy('weekIndex')
      .orderBy('dayIndex')
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Stream<TrainingSession?> watchToday() {
    final start = DateTime.now().copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
    final end = start.add(const Duration(days: 1));
    return _col
        .where('ownerId', isEqualTo: _uid)
        .where('date', isGreaterThanOrEqualTo: Timestamp.fromDate(start))
        .where('date', isLessThan: Timestamp.fromDate(end))
        .limit(1)
        .snapshots()
        .map((s) => s.docs.isEmpty ? null : s.docs.first.data());
  }

  Stream<TrainingSession?> watch(String id) =>
      _col.doc(id).snapshots().map((s) => s.data());

  Future<String> create(TrainingSession session) async {
    final ref = await _col.add(session);
    return ref.id;
  }

  Future<void> update(TrainingSession session) =>
      _col.doc(session.id).set(session);

  Future<void> delete(String id) => _col.doc(id).delete();
}
