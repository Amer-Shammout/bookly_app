import 'package:bookly_app/Feautures/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(
                bookModel: state.books[index],
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errMessage: state.errMessage,
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
