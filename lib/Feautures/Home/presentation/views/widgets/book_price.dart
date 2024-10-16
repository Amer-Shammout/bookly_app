import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 ",
          style: AppStyles.styleBold20(context),
        ),
        Text(
          "€",
          style: AppStyles.styleBold15(context),
        ),
      ],
    );
  }
}

