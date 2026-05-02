import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/auth_providers.dart';
import '../features/auth/sign_in_screen.dart';
import '../features/block/block_screen.dart';
import '../features/library/library_screen.dart';
import '../features/lifts/lifts_screen.dart';
import '../features/meet/meet_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/today/today_screen.dart';

abstract final class Routes {
  static const signIn = '/sign-in';
  static const onboarding = '/onboarding';
  static const today = '/today';
  static const block = '/block';
  static const lifts = '/lifts';
  static const meet = '/meet';
  static const library = '/library';
  static const profile = '/profile';
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.today,
    refreshListenable: _AuthListenable(ref),
    redirect: (context, state) {
      final auth = ref.read(authStateChangesProvider);
      // Wait for first auth event before redirecting.
      if (auth.isLoading) return null;

      final user = auth.valueOrNull;
      final goingToSignIn = state.matchedLocation == Routes.signIn;
      final goingToOnboarding = state.matchedLocation == Routes.onboarding;

      if (user == null) {
        return goingToSignIn ? null : Routes.signIn;
      }

      // User signed in. Check whether their profile doc exists; if not,
      // route through onboarding. While the profile stream is still
      // loading, hold the current location to avoid a flicker.
      final profile = ref.read(currentUserProfileProvider);
      if (profile.isLoading) return null;
      final hasProfile = profile.valueOrNull != null;
      if (!hasProfile && !goingToOnboarding) return Routes.onboarding;
      if (hasProfile && (goingToSignIn || goingToOnboarding)) {
        return Routes.today;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: Routes.signIn,
        builder: (_, __) => const SignInScreen(),
      ),
      GoRoute(
        path: Routes.onboarding,
        builder: (_, __) => const OnboardingScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) => _AppShell(child: child),
        routes: [
          GoRoute(
            path: Routes.today,
            builder: (_, __) => const TodayScreen(),
          ),
          GoRoute(
            path: Routes.block,
            builder: (_, __) => const BlockScreen(),
          ),
          GoRoute(
            path: Routes.lifts,
            builder: (_, __) => const LiftsScreen(),
          ),
          GoRoute(
            path: Routes.meet,
            builder: (_, __) => const MeetScreen(),
          ),
          GoRoute(
            path: Routes.library,
            builder: (_, __) => const LibraryScreen(),
          ),
          GoRoute(
            path: Routes.profile,
            builder: (_, __) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
});

/// Bridges Riverpod's auth stream into go_router's `refreshListenable`,
/// so the router re-evaluates redirects on sign-in / sign-out.
class _AuthListenable extends ChangeNotifier {
  _AuthListenable(this._ref) {
    _ref.listen(authStateChangesProvider, (_, __) => notifyListeners());
    _ref.listen(currentUserProfileProvider, (_, __) => notifyListeners());
  }

  final Ref _ref;
}

class _AppShell extends StatelessWidget {
  const _AppShell({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final destinations = <_NavDest>[
      const _NavDest(Routes.today, 'Today', Icons.today),
      const _NavDest(Routes.block, 'Block', Icons.calendar_view_week),
      const _NavDest(Routes.lifts, 'Lifts', Icons.show_chart),
      const _NavDest(Routes.meet, 'Meet', Icons.emoji_events),
      const _NavDest(Routes.library, 'Library', Icons.menu_book),
      const _NavDest(Routes.profile, 'Profile', Icons.person),
    ];
    final selected = destinations.indexWhere((d) => d.path == location);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selected < 0 ? 0 : selected,
        onDestinationSelected: (i) => context.go(destinations[i].path),
        destinations: [
          for (final d in destinations)
            NavigationDestination(icon: Icon(d.icon), label: d.label),
        ],
      ),
    );
  }
}

class _NavDest {
  const _NavDest(this.path, this.label, this.icon);
  final String path;
  final String label;
  final IconData icon;
}
