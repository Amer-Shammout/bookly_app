import 'package:bookly_app/Feautures/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feautures/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
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
        const SizedBox(
          height: 20,
        ),
        const FeaturedBooksListView(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}







// class CustomAppBarItem extends StatelessWidget {
//   const CustomAppBarItem({
//     super.key,
//     required this.onPressed,
//     required this.icon,
//     required this.iconWidth,
//     required this.iconHeight,
//   });

//   final VoidCallback onPressed;
//   final String icon;
//   final double? iconWidth;
//   final double? iconHeight;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: onPressed,
//       icon: SvgPicture.asset(
//         icon,
//         width: iconWidth,
//         height: iconHeight,
//       ),
//     );
//   }
// }
