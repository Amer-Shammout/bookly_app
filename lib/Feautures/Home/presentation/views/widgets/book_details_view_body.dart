import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_cover.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/book_details.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/suggestions_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .3,
                child: const Center(
                  child: BookCover(
                    radius: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const BookDetails(),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: BooksAction(),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(
                  'You can also like',
                  style: AppStyles.styleSemiBold18.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SuggestionsListView(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
