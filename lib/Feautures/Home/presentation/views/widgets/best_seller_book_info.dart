import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_price.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBookInfo extends StatelessWidget {
  const BestSellerBookInfo({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bookModel.volumeInfo.title,
          style: AppStyles.styleRegular20(context),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          bookModel.volumeInfo.authors.first,
          style: AppStyles.styleMedium14(context),
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BookPrice(),
            BookRating(
              ratingCount: bookModel.volumeInfo.ratingCount ?? 0,
              averageRating: bookModel.volumeInfo.averageRating ?? '0',
            ),
          ],
        ),
      ],
    );
  }
}
