import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails.BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: const Center(
            child: BookCover(
              imageUrl: 'http://books.google.com/books/content?id=b-2oDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
              radius: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          'The Jungle Book',
          style: AppStyles.styleRegular30(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Rudyard Kipling',
          style: AppStyles.styleMedium18(context),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(averageRating: '4',ratingCount: 10,),
        const SizedBox(
          height: 35,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: BooksAction(),
        ),
      ],
    );
  }
}
