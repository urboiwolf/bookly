import 'package:bookly_app/core/utlis/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(AppAssets.logo, height: 18),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22))
        ],
      ),
    );
  }
}
