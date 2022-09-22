import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class CustomIntroTextButton extends StatelessWidget {
  final String title;
  final double width;
  final Alignment alignment;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color buttonColor;

  const CustomIntroTextButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.alignment,
    required this.onPressed,
    this.margin = EdgeInsets.zero, required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: width,
        margin: margin,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: buttonColor
          ),
          child: Text(
            title,
            style: fullWhiteTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          ),
        ),
      ),
    );
  }
}
