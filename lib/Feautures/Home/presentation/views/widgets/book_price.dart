import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  // final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Free",
          style: AppStyles.styleBold20(context),
        ),
        // Text(
        //   "€",
        //   style: AppStyles.styleBold15(context),
        // ),
      ],
    );
  }
}
