import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Per-lift history, e1RM chart, projection line to meet date.
class LiftsScreen extends ConsumerWidget {
  const LiftsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lifts')),
      body: const Center(child: Text('e1RM chart + projection — Slice 3')),
    );
  }
}
