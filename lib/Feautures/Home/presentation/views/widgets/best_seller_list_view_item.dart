import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_info.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BookCover(),
          Flexible(
            child: SizedBox(
              width: 30,
            ),
          ),
          Expanded(
            flex: 4,
            child: BookInfo(),
          ),
        ],
      ),
    );
  }
}