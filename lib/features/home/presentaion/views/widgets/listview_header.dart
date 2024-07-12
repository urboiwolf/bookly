import 'package:bookly_app/features/home/presentaion/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class ListViewHeader extends StatelessWidget {
  const ListViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: ListViewItem(),
            );
          }),
    );
  }
}
