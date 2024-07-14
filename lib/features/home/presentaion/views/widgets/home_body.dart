import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/listview_header.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppBar(),
              ),
              ListViewHeader(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle20,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: BestSellerListView(),
        )),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerItem(),
          );
        });
  }
}
