import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonAction extends StatelessWidget {
  const CustomButtonAction(
      {super.key,
      required this.borderRadius,
      required this.text,
      required this.color,
      required this.backGroundColor,
      this.fontWeight});
  final BorderRadius borderRadius;
  final String text;
  final Color color;
  final Color backGroundColor;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backGroundColor,
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle20
                .copyWith(color: color, fontWeight: fontWeight),
          )),
    );
  }
}
