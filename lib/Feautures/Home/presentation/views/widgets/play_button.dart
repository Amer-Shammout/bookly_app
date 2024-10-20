import 'dart:ui';

import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/functions/lunch_custom_url.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: kPrimaryColor.withOpacity(.05),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(2, 7),
              ),
            ],
            color: Colors.white.withOpacity(.1),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              size: 20,
              Icons.play_arrow,
            ),
            onPressed: () async {
              await launchCustomUrl(
                context: context,
                isAvailable: bookModel.volumeInfo.previewLink != null,
                url: bookModel.volumeInfo.previewLink ?? '',
              );
            },
            padding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
