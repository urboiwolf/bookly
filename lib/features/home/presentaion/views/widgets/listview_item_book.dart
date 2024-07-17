import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:flutter/widgets.dart';

class ListViewItemBook extends StatelessWidget {
  const ListViewItemBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              image: AssetImage(AppAssets.test), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
