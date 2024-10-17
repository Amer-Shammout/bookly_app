import 'package:bookly_app/Feautures/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          leadingIcon: Assets.imagesLogoAppBar,
          trailingIcon: Assets.imagesSearch,
          iconHeight: 20,
          iconWidth: 20,
          leadingOnPressed: () {},
          trailingOnPressed: () {},
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              const SliverToBoxAdapter(child: FeaturedBooksListView()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: kHorizontalPadding),
                  child: Text(
                    'Best Seller',
                    style: AppStyles.styleSemiBold18(context),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const BestSellerListView(),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
