import 'package:bookly_app/core/utlis/widgets/custom_Button.dart';
import 'package:flutter/material.dart';

class BookDetailsButtonAction extends StatelessWidget {
  const BookDetailsButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButtonAction(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                text: '19.99€',
                color: Colors.black,
                backGroundColor: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: CustomButtonAction(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              text: 'Free preview',
              color: Colors.white,
              backGroundColor: Color(0xFFEF8262),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
