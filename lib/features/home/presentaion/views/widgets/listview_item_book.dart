import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:flutter/widgets.dart';

class ListViewItemBook extends StatelessWidget {
  const ListViewItemBook({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
