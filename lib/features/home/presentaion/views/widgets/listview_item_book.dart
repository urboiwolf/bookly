import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewItemBook extends StatelessWidget {
  const ListViewItemBook({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: CachedNetworkImage(
              imageUrl: imageurl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error))),
    );
  }
}
