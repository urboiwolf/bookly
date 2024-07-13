import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/listview_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            ListViewHeader(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Best Seller',
                style: Styles.titleMedium,
              ),
            ),
            BestSellerItem(),
          ],
        ),
      ),
    ));
  }
}

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
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test), fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Harry Potter and the Goblet of Fire Goblet',
            ),
          ],
        )
      ],
    );
  }
}
