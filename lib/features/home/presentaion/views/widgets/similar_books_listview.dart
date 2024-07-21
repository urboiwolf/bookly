import 'package:bookly_app/features/home/presentaion/views/widgets/listview_item_book.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListViewItemBook(
                imageurl:
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fdisney.fandom.com%2Fwiki%2FSabrina_Carpenter&psig=AOvVaw1ZBPrc-kwcoNL2FblptZfg&ust=1721646851900000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKDMgLuAuIcDFQAAAAAdAAAAABAE',
              ),
            );
          }),
    );
  }
}
