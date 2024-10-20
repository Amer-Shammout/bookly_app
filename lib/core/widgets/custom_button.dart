import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.borderRadius,
    required this.text,
    required this.textStyle,
    required this.onPressed,
    required this.isActive,
  });

  final Color backgroundColor;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: AbsorbPointer(
        absorbing: !isActive,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            overlayColor: kPrimaryColor,
            backgroundColor:
                isActive ? backgroundColor : backgroundColor.withOpacity(.5),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: Text(
            text,
            style: isActive
                ? textStyle
                : textStyle.copyWith(
                    color:
                        isActive ? Colors.black : Colors.black.withOpacity(.5)),
          ),
        ),
      ),
    );
  }
}
