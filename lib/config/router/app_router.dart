import 'package:go_router/go_router.dart';
import 'package:proyecto12_widget_app/presentation/screens/animated/animated_screen.dart';
import 'package:proyecto12_widget_app/presentation/screens/app_tutorial/app_tutorial.dart';
import 'package:proyecto12_widget_app/presentation/screens/infinite_scroll/infinite_scroll.dart';
import 'package:proyecto12_widget_app/presentation/screens/progress/progress_screen.dart';
import 'package:proyecto12_widget_app/presentation/screens/screens.dart';
import 'package:proyecto12_widget_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:proyecto12_widget_app/presentation/screens/ui_controls/ui_controls_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name, //El nombre del objeto static de tu clase HomeScreen
      builder: (context, state) => const HomeScreen(),
    ),
    
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/app-tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
  ],
);