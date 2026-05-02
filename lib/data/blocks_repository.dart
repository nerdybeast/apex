import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/block.dart';
import '../domain/enums.dart';
import 'firestore_refs.dart';

class BlocksRepository {
  BlocksRepository(this._db, this._uid);

  final FirebaseFirestore _db;
  final String _uid;

  CollectionReference<Block> get _col => _db
      .collection(FirestoreCollections.blocks)
      .withConverter<Block>(
        fromFirestore: (snap, _) =>
            Block.fromJson({...snap.data()!, 'id': snap.id}),
        toFirestore: (b, _) => b.toJson()..remove('id'),
      );

  Stream<List<Block>> watchAll() => _col
      .where('ownerId', isEqualTo: _uid)
      .orderBy('startDate', descending: true)
      .snapshots()
      .map((s) => s.docs.map((d) => d.data()).toList());

  Stream<Block?> watch(String id) =>
      _col.doc(id).snapshots().map((s) => s.data());

  Stream<Block?> watchActive() => _col
      .where('ownerId', isEqualTo: _uid)
      .where('status', isEqualTo: BlockStatus.running.name)
      .limit(1)
      .snapshots()
      .map((s) => s.docs.isEmpty ? null : s.docs.first.data());

  Future<String> create(Block block) async {
    final ref = await _col.add(block);
    return ref.id;
  }

  Future<void> update(Block block) => _col.doc(block.id).set(block);

  Future<void> delete(String id) => _col.doc(id).delete();
}
