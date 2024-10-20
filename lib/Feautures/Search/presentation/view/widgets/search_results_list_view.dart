import 'package:bookly_app/Feautures/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Feautures/Search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(bookModel: state.books[index],);
              // BestSellerListViewItem(bookModel: ,);
            },
          );
        } else if (state is SearchBooksFailure) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              errMessage: state.errMessage,
            ),
          );
        } else if (state is SearchBooksInitial) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                "What are you looking for ?",
                style: AppStyles.styleSemiBold18(context),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
