import 'package:bookly_app/Feautures/Home/presentation/views/widgets/suggestions_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SuggestionsSection extends StatelessWidget {
  const SuggestionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            'You can also like',
            style: AppStyles.styleSemiBold18(context).copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SuggestionsListView(),
      ],
    );
  }
}
