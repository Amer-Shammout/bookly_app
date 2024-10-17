import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Jungle Book',
          style: AppStyles.styleRegular30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Rudyard Kipling',
          style: AppStyles.styleMedium18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(),
      ],
    );
  }
}
