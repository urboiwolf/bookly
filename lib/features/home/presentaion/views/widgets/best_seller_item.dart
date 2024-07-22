import 'package:bookly_app/core/utlis/routers.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModels});
  final BooksModel bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(Routers.bookDetails, extra: bookModels);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 126,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: CachedNetworkImage(
                    imageUrl: bookModels.volumeInfo.imageLinks?.thumbnail ?? '',
                    fit: BoxFit.fill,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(bookModels.volumeInfo.title!,
                      style: Styles.textStyle20),
                ),
                const SizedBox(height: 5),
                Text(bookModels.volumeInfo.authors![0],
                    style: Styles.textStyle14.copyWith(
                        fontFamily: 'Montserrat', color: Colors.grey)),
                Row(
                  children: [
                    Text('Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold)),
                    const Spacer(),
                    const SizedBox(width: 5),
                    BookRating(
                      count: bookModels.volumeInfo.pageCount!,
                      rating: bookModels.volumeInfo.pageCount!,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
