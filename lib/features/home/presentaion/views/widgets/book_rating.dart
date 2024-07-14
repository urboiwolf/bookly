import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('4.8',
            style: Styles.textStyle16.copyWith(fontFamily: 'Montserrat')),
        const SizedBox(width: 5),
        Text('(2390)',
            style: Styles.textStyle14
                .copyWith(fontFamily: 'Montserrat', color: Colors.grey)),
      ],
    );
  }
}
