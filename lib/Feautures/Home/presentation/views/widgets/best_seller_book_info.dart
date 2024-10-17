import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_price.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Harry Potter and the Goblet of Fire",
          style: AppStyles.styleRegular20(context),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          "J.K. Rowling",
          style: AppStyles.styleMedium14(context),
        ),
        const SizedBox(
          height: 3,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BookPrice(),
            BookRating(),
          ],
        ),
      ],
    );
  }
}
