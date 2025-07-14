import 'package:freshiest_cwash_admin_side_app/src/core/routes/route_name.dart';
import 'package:go_router/go_router.dart';
import '../../features/common_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../../features/screens/booking_screen/presentation/booking_screen.dart';
import '../../features/screens/feedback_screen/presentation/feedback_screen.dart';
import '../../features/screens/history_screens/presentation/history_screen.dart';
import '../../features/screens/home_screen/presentation/home_screen.dart';
import '../../features/screens/home_screen/presentation/successful_screen/successful_screen.dart';
import '../../features/screens/onboarding/presentation/onboarding_screen.dart';
import '../../features/screens/profile_screens/presentation/profile_screen.dart';
import '../../features/screens/search_screen/presentation/search_screen.dart';
import '../../features/screens/service_details_screen/presentation/service_details_screen.dart';
import 'build_page_with_transition.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.onboardingScreen,

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
                path: RouteName.serviceBookingScreen,
                builder: (context, state) => const BookingScreen(),
              ),
            ],
          ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: RouteConst.car,
          //       builder: (context, state) => const CarScreen(),
          //     ),
          //   ],
          // ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.history,
                builder: (context, state) => const HistoryScreen(),
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
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: OnboardingScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteName.serviceDetails,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: ServiceDetailsScreen(),
          );
        },
      ),


      GoRoute(
        path: RouteName.successfulScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SuccessfulScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteName.feedbackScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: FeedbackScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteName.search,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SearchScreen(),
          );
        },
      ),


    ],
  );
}
