import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/listview_item_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListViewItemBook(
                        imageurl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ));
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(message: state.message);
        }
        return const Center(child: CustomLoadingIndicator());
      },
    );
  }
}
