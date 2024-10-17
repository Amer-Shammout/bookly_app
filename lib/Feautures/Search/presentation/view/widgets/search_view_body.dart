import 'package:bookly_app/Feautures/Search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Feautures/Search/presentation/view/widgets/search_results_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomSearchTextField(),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: Text(
                    'Search Result',
                    style: AppStyles.styleSemiBold18(context),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              const SearchResultsListView(),
            ],
          ),
        ),
      ],
    );
  }
}
