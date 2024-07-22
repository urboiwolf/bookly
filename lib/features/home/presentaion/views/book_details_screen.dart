import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/presentaion/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.bookModels});
  final BooksModel bookModels;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimlarBooks(
      category: widget.bookModels.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsBody(
          booksModels: widget.bookModels,
        ),
      ),
    );
  }
}
