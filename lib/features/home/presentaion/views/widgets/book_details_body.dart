import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_button_action.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_text.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_image_details.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_appbar_book_details.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.booksModels});
  final BooksModel booksModels;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarBookDetails(),
              BookImageDetails(
                booksModel: booksModels,
              ),
              BookDetailsText(
                booksModel: booksModels,
              ),
              BookDetailsButtonAction(
                booksModel: booksModels,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('You can also like', style: Styles.textStyle16),
                ),
              ),
              const Expanded(child: SizedBox(height: 15)),
              const SimilarBooksListView(),
              const SizedBox(height: 40),
            ],
          ),
        )
      ],
    );
  }
}
