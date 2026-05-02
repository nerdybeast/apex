import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Top-level collection names. Flat by design — every screen loads in one
/// read. See `docs/v2-spec.md` in the reference repo for rationale.
abstract final class FirestoreCollections {
  static const users = 'users';
  static const lifts = 'lifts';
  static const maxes = 'maxes';
  static const programTemplates = 'programTemplates';
  static const blocks = 'blocks';
  static const sessions = 'sessions';
  static const meets = 'meets';
}

final firestoreProvider = Provider<FirebaseFirestore>(
  (ref) => FirebaseFirestore.instance,
);
