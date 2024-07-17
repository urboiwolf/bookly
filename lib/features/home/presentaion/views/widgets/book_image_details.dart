import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:flutter/widgets.dart';

class BookImageDetails extends StatelessWidget {
  const BookImageDetails({super.key});

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
              image: const DecorationImage(
                  image: AssetImage(AppAssets.test), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
