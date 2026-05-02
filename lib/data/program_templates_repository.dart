import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/enums.dart';
import '../domain/program_template.dart';
import 'firestore_refs.dart';

class ProgramTemplatesRepository {
  ProgramTemplatesRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String? _uid;

  CollectionReference<ProgramTemplate> get _col => _db
      .collection(FirestoreCollections.programTemplates)
      .withConverter<ProgramTemplate>(
        fromFirestore: (snap, _) =>
            ProgramTemplate.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (t, _) => t.toJson()..remove('id'),
      );

  /// Library = preloaded templates + current user's own templates.
  Stream<List<ProgramTemplate>> watchLibrary({Sport? sport}) {
    Query<ProgramTemplate> q = _col;
    if (sport != null) {
      q = q.where('sport', isEqualTo: sport.name);
    }
    return q.snapshots().map((s) => s.docs
        .map((d) => d.data())
        .where((t) => t.isPreloaded || t.ownerId == _uid)
        .toList());
  }

  Stream<ProgramTemplate?> watch(String id) =>
      _col.doc(id).snapshots().map((s) => s.data());

  Future<ProgramTemplate?> get(String id) async {
    final snap = await _col.doc(id).get();
    return snap.data();
  }

  /// Used by the seed routine for preloaded templates. Idempotent.
  Future<void> upsert(ProgramTemplate template) =>
      _col.doc(template.id).set(template);
}
