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
    return Padding(
      padding: const EdgeInsets.only(left: 24.0,right: 24.0,top: 40.0,bottom: 40),
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
    );
  }
}