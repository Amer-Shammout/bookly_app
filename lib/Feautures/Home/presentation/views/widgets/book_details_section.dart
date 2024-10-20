import 'package:bookly_app/Feautures/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            child:  Center(
              child: BookCover(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                radius: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Text(
            bookModel.volumeInfo.title,
            style: AppStyles.styleRegular30(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            bookModel.volumeInfo.authors.first,
            style: AppStyles.styleMedium18(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
           BookRating(averageRating: bookModel.volumeInfo.averageRating ?? '0',ratingCount: bookModel.volumeInfo.ratingCount ?? 0,),
          const SizedBox(
            height: 35,
          ),
          BooksAction(bookModel: bookModel,),
        ],
      ),
    );
  }
}
