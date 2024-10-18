import 'package:bookly_app/Feautures/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: formatPadding(index),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }

  EdgeInsets formatPadding(int index) {
    return EdgeInsets.only(
            left: index == 0 ? kHorizontalPadding : 0,
            right: index == 3 ? kHorizontalPadding : 15,
          );
  }
}
