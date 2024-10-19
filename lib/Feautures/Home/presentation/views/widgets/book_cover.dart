import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.radius,
    this.child,
    required this.imageUrl,
  });

  final String imageUrl;
  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 105,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          padding: const EdgeInsets.only(right: 10, bottom: 10),
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
          child: child,
        ),
        errorWidget: (context, url, error) => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xff504D6D).withOpacity(.3),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: const Icon(
            Icons.error,
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
