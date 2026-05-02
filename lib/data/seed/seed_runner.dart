import 'package:cloud_firestore/cloud_firestore.dart';

import '../firestore_refs.dart';
import 'lifts_seed.dart';
import 'program_templates_seed.dart';

/// Idempotent seed routine. Writes the static lift registry and the
/// preloaded program templates if they haven't been written yet.
///
/// Lifts are read-only in production rules — call this from a trusted
/// admin context (CI script using a service account) or temporarily relax
/// the rules during first run.
///
/// Program templates are owned by the system (`ownerId == 'system'`) and
/// flagged `isPreloaded: true`; rules expose them to all authenticated
/// users.
class SeedRunner {
  SeedRunner(this._db);

  final FirebaseFirestore _db;

  Future<void> run() async {
    await _seedLifts();
    await _seedTemplates();
  }

  Future<void> _seedLifts() async {
    final batch = _db.batch();
    for (final lift in seedLifts) {
      final ref = _db.collection(FirestoreCollections.lifts).doc(lift.id);
      batch.set(ref, lift.toJson()..remove('id'));
    }
    await batch.commit();
  }

  Future<void> _seedTemplates() async {
    final batch = _db.batch();
    for (final t in preloadedTemplates) {
      final ref =
          _db.collection(FirestoreCollections.programTemplates).doc(t.id);
      batch.set(ref, t.toJson()..remove('id'));
    }
    await batch.commit();
  }
}
