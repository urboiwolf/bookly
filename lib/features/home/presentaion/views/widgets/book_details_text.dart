import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsText extends StatelessWidget {
  const BookDetailsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('The Jungle Book', style: Styles.textStyle30),
        Text('Rudyard Kipling',
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeight.w400, color: Colors.grey)),
        const SizedBox(height: 10),
        const BookRating()
      ],
    );
  }
}
