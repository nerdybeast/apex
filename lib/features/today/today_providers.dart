import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/blocks_repository.dart';
import '../../data/sessions_repository.dart';
import '../../domain/block.dart';
import '../../domain/session.dart';

final todaySessionProvider = StreamProvider<TrainingSession?>((ref) {
  return ref.watch(sessionsRepositoryProvider).watchToday();
});

final todayBlockProvider = StreamProvider<Block?>((ref) {
  final session = ref.watch(todaySessionProvider).valueOrNull;
  if (session == null) return const Stream.empty();
  return ref.watch(blocksRepositoryProvider).watch(session.blockId);
});
