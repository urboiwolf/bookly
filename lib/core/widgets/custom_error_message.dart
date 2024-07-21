import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Text(message, style: Styles.textStyle18);
  }
}
