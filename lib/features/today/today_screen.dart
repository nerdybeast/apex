import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **Today** — center of gravity for the app.
///
/// Slice 1 work: show today's prescribed session with weights computed
/// from current training maxes. One-screen, no scrolling for a typical
/// session. Tap-to-mark sets done, optional RPE log, AMRAP triggers
/// e1RM auto-update.
///
/// See `docs/v2-spec.md` -> "Today is the center of gravity".
class TodayScreen extends ConsumerWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Today')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'No session logged yet.\n\n'
            'Slice 1 will wire today’s prescribed lifts here.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
