import 'package:bookly_app/core/utlis/routers.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentaion/manger/featured_book_cubit/home_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/book_details_screen.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/listview_item_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewHeader extends StatelessWidget {
  const ListViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .go(Routers.bookDetails, extra: state.books[index]);
                    },
                    child: ListViewItemBook(
                        imageurl: state.books[index].volumeInfo.imageLinks
                                ?.smallThumbnail ??
                            ''),
                  ),
                );
              },
            ),
          );
        } else if (state is HomeCubitError) {
          return CustomErrorMessage(message: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
