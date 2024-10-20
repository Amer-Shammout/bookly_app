import 'package:bookly_app/core/utils/functions/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(
    {required String url,
    required BuildContext context,
    required bool isAvailable}) async {
  if (isAvailable) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(
        context,
        'Cannot launch $url',
      );
    }
  }
}


