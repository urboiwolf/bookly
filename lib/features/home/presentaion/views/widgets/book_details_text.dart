import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsText extends StatelessWidget {
  const BookDetailsText({
    super.key,
    required this.booksModel,
  });
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            booksModel.volumeInfo.title!,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          Text(booksModel.volumeInfo.authors![0],
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.w400, color: Colors.grey)),
          const SizedBox(height: 10),
          BookRating(
            count: booksModel.volumeInfo.pageCount ?? 0,
            rating: booksModel.volumeInfo.pageCount ?? 0,
          )
        ],
      ),
    );
  }
}
