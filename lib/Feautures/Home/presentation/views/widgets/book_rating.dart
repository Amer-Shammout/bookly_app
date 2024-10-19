import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, required this.averageRating, required this.ratingCount,
  });

  final String averageRating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.imagesStar,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          averageRating,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($ratingCount)',
          style: AppStyles.styleRegular14(context),
        )
      ],
    );
  }
}
