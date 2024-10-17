import 'package:bookly_app/Feautures/Search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomSearchTextField(),
        ),
      ],
    );
  }
}
