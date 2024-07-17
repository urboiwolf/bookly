import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:bookly_app/core/utlis/routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.logo, height: 18),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routers.searchView);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22))
      ],
    );
  }
}
