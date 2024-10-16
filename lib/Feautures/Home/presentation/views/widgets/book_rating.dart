import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 5,
        ),
        const Text(
          '4.8',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: AppStyles.styleRegular14,
        )
      ],
    );
  }
}