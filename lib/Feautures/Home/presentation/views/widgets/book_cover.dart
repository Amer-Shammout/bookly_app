import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.radius,
    this.child,
  });

  final double radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 105,
      child: Container(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesBook1High,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: child,
      ),
    );
  }
}
