import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                15,
              ),
              bottomLeft: Radius.circular(
                15,
              ),
            ),
            text: 'Free',
            textStyle: AppStyles.styleBold18(context),
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: const Color(
              0xffEF8262,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                15,
              ),
              bottomRight: Radius.circular(
                15,
              ),
            ),
            text: 'Preview',
            textStyle: AppStyles.styleBold16(context),
          ),
        )
      ],
    );
  }
}
