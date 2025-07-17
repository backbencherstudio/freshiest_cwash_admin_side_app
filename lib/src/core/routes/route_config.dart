import 'package:freshiest_cwash_admin_side_app/src/core/routes/route_name.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/bookings/presentation/booking_screen.dart';
import 'package:freshiest_cwash_admin_side_app/src/features/screens/request_screen/presentation/request_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../../features/screens/home/presentation/home_screen.dart';
import '../../features/screens/onboarding/presentation/onboarding_screen.dart';
import '../../features/screens/profile_screens/presentation/profile_screen.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.home,

    /// Start at the splash screen
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.booking,
                builder: (context, state) => const BookingScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.request,
                builder: (context, state) => const RequestScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.user,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: RouteName.onboardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
    ],
  );
}
