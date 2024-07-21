import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewItemBook extends StatelessWidget {
  const ListViewItemBook({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
            imageUrl: imageurl,
            errorWidget: (context, url, error) => const Icon(Icons.error)));
  }
}
