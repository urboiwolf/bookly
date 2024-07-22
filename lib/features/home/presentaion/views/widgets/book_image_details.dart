import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:flutter/widgets.dart';

class BookImageDetails extends StatelessWidget {
  const BookImageDetails({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        height: 320,
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                    booksModel.volumeInfo.imageLinks?.thumbnail ?? ''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
