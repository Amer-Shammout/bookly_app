import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/suggestions_section.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          leadingIcon: Assets.imagesClose,
          trailingIcon: Assets.imagesCart,
          leadingOnPressed: () {
            GoRouter.of(context).pop();
          },
          trailingOnPressed: () {},
        ),
        Expanded(
          child: ListView(
            children: const [
              BookDetails.BookDetailsSection(),
              SizedBox(
                height: 50,
              ),
              SuggestionsSection(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
