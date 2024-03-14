import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/landing',
      builder: (context, state) => const LandingScreen(),
    ),

    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailScreen(),
    ),

    GoRoute(
      path: '/detail-scroll',
      builder: (context, state) => const DetailScrollScreen(),
    ),

  ],
);
