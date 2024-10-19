import 'package:bookly_app/Feautures/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/best_seller_book_info.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: kHorizontalPadding,
          right: kHorizontalPadding,
          bottom: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .15,
              child:  BookCover(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                radius: 8,
              ),
            ),
            const Flexible(
              child: SizedBox(
                width: 30,
              ),
            ),
            Expanded(
              flex: 4,
              child: BestSellerBookInfo(bookModel: bookModel,),
            ),
          ],
        ),
      ),
    );
  }
}
