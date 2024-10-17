import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/play_button.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const BookCover(
      radius: 14,
      child: PlayButton(),
    );
  }
}
