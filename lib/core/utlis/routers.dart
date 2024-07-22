import 'package:bookly_app/core/utlis/di.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/book_details_screen.dart';
import 'package:bookly_app/features/home/presentaion/views/home_screen.dart';
import 'package:bookly_app/features/search/presentaion/views/search_screen.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
abstract class Routers {
  static const splashView = '/';
  static const homeView = '/homeView';
  static const bookDetails = '/bookDetails';
  static const searchView = '/searchView';
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
        path: searchView,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: bookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(gitIt.get<HomeRepoImpl>()),
          child: BookDetailsScreen(bookModels: state.extra as BooksModel),
        ),
      ),
    ],
  );
}
