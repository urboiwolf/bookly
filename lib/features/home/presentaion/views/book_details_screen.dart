import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_body.dart';

import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsBody(),
      ),
    );
  }
}
