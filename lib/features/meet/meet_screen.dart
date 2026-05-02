import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Pre-meet attempt planner / day-of Meet Mode. Big-numbers UI with
/// auto-advance on attempt 1/2/3, made/missed buttons, running total,
/// federation-aware attempt selection.
class MeetScreen extends ConsumerWidget {
  const MeetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meet')),
      body: const Center(child: Text('Attempt planner — Slice 3')),
    );
  }
}
