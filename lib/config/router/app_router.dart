
import 'package:go_router/go_router.dart';
import 'package:razadis/presentation/screens/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/mental',
      name: MentalHealthScreen.name,
      builder: (context, state) => const MentalHealthScreen(),
    ),
    GoRoute(
      path: '/discover',
      name: DiscoverUiScreen.name,
      builder: (context, state) => const DiscoverUiScreen(),
    ),
    GoRoute(
      path: '/expence',
      name: ExpenceAppScreen.name,
      builder: (context, state) => const ExpenceAppScreen(),
    ),
    GoRoute(
      path: '/medical',
      name: MedicalAppScreen.name,
      builder: (context, state) => const MedicalAppScreen(),
    ),
    GoRoute(
      path: '/wallet',
      name: WalletAppScreen.name,
      builder: (context, state) => const WalletAppScreen(),
    ),
    GoRoute(
      path: '/workout',
      name: WorkoutAppScreen.name,
      builder: (context, state) => const WorkoutAppScreen(),
    ),
    GoRoute(
      path: '/onbording',
      name: OnboardingScreen.name,
      builder: (context, state) => const OnboardingScreen(),
    )
  ]
);