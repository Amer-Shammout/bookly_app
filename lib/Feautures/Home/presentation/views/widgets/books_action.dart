import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/functions/lunch_custom_url.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            isActive: bookModel.accessInfo?.pdf?.isAvailable ?? false,
            onPressed: () async {
              await launchCustomUrl(
                context: context,
                isAvailable: bookModel.accessInfo?.pdf?.isAvailable ?? false,
                url: bookModel.accessInfo?.pdf?.acsTokenLink ?? '',
              );
            },
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                15,
              ),
              bottomLeft: Radius.circular(
                15,
              ),
            ),
            text: 'Dawnload',
            textStyle: AppStyles.styleBold18(context),
          ),
        ),
        Expanded(
          child: CustomButton(
            isActive: bookModel.volumeInfo.previewLink !=null,
            onPressed: () async {
              await launchCustomUrl(
                context: context,
                isAvailable: bookModel.volumeInfo.previewLink !=null ,
                url: bookModel.volumeInfo.previewLink ?? '',
              );
            },
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
