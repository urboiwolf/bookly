import 'package:bookly_app/features/home/presentaion/views/book_details_screen.dart';
import 'package:bookly_app/features/home/presentaion/views/home_screen.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
abstract class Routers {
  static const splashView = '/';
  static const homeView = '/homeView';
  static const bookDetails = '/bookDetails';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
