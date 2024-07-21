import 'package:bookly_app/core/utlis/routers.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(Routers.bookDetails);
      },
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerItem(),
            );
          }),
    );
  }
}
