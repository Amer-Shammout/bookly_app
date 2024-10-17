import 'dart:ui';

import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.7),
              blurRadius: 30,
              offset: const Offset(2, 7))
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(.44),
        radius: getResponsiveFontSize(context, baseFontSize: 20),
        child: IconButton(
          icon: const Icon(
            size: 20,
            Icons.play_arrow,
          ),
          onPressed: () {},
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
