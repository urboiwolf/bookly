import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rating,
    required this.count,
  });

  final int rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.yellow, size: 20),
        const SizedBox(width: 2),
        Text(rating.toString(),
            style: Styles.textStyle16.copyWith(fontFamily: 'Montserrat')),
        const SizedBox(width: 10),
        Text('(${count.toString()})',
            style: Styles.textStyle14
                .copyWith(fontFamily: 'Montserrat', color: Colors.grey)),
      ],
    );
  }
}
