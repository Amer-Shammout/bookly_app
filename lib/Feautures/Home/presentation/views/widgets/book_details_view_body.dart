import 'package:bookly_app/Feautures/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomAppBar(leadingIcon: Assets.imagesClose, trailingIcon: Assets.imagesCart, leadingOnPressed: (){}, trailingOnPressed: (){}),
      ],
    );
  }
}