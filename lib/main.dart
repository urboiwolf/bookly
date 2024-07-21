import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/di.dart';
import 'package:bookly_app/core/utlis/routers.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentaion/manger/featured_book_cubit/home_cubit.dart';
import 'package:bookly_app/features/home/presentaion/manger/newest_books_cubit/newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  gitinit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomeCubit(gitIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestCubit(gitIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Routers.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.(ThemeData.dark().textTheme,
          // ),
        ),
      ),
    );
  }
}
