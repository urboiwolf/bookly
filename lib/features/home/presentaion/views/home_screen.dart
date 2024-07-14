import 'package:bookly_app/features/home/presentaion/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeBody()));
  }
}
