import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Mesocycle calendar. Scrub weeks/days, open any session, edit upcoming
/// sessions inline.
class BlockScreen extends ConsumerWidget {
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Block')),
      body: const Center(child: Text('Block calendar — Slice 2')),
    );
  }
}
