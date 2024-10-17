import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SuggestionsListView extends StatelessWidget {
  const SuggestionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? kHorizontalPadding : 0,
              right: index == 9 ? kHorizontalPadding : 10,
            ),
            child: const BookCover(radius: 8),
          );
        },
      ),
    );
  }
}
