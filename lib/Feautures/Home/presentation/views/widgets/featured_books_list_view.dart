import 'package:bookly_app/Feautures/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .27,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: formatPadding(index),
                  child: FeaturedListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }

  EdgeInsets formatPadding(int index) {
    return EdgeInsets.only(
      left: index == 0 ? kHorizontalPadding : 0,
      right: index == 3 ? kHorizontalPadding : 15,
    );
  }
}
