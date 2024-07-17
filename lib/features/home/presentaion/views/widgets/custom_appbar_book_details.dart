import 'package:bookly_app/core/utlis/routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).go(Routers.homeView);
              },
              icon: const Icon(Icons.close)),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.bagShopping))
        ],
      ),
    );
  }
}
