import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/landing',
      name: LandingScreen.name,
      builder: (context, state) => const LandingScreen(),
    ),

    GoRoute(
      path: '/detail',
      name: DetailScreen.name,
      builder: (context, state) => const DetailScreen(),
    ),

    GoRoute(
      path: '/detail-scroll',
      name: DetailScrollScreen.name,
      builder: (context, state) => const DetailScrollScreen(),
    ),

  ],
);
