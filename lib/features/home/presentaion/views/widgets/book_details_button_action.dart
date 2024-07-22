import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButtonAction extends StatelessWidget {
  const BookDetailsButtonAction({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          const Expanded(
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
              ontap: () async {
                final Uri uri = Uri.parse(booksModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              text: 'Free preview',
              color: Colors.white,
              backGroundColor: const Color(0xFFEF8262),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
