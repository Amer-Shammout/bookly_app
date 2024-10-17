import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.leadingOnPressed,
      required this.trailingOnPressed,
      this.iconWidth,
      this.iconHeight});

  final String leadingIcon, trailingIcon;
  final VoidCallback leadingOnPressed, trailingOnPressed;
  final double? iconWidth, iconHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: kHorizontalPadding, right: kHorizontalPadding, top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: leadingOnPressed,
                icon: SvgPicture.asset(
                  leadingIcon,
                  width: iconWidth,
                  height: iconHeight,
                ),
              ),
              IconButton(
                onPressed: trailingOnPressed,
                icon: SvgPicture.asset(
                  trailingIcon,
                ),
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
