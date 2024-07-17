import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 126,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test), fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text('Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20),
              ),
              const SizedBox(height: 5),
              Text('J.K. Rowling',
                  style: Styles.textStyle14
                      .copyWith(fontFamily: 'Montserrat', color: Colors.grey)),
              Row(
                children: [
                  Text('19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  const SizedBox(width: 5),
                  const BookRating(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
