import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final bool isActive;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            height: 48,
            width: double.infinity,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
              child: Text(
                title,
                style: fullWhiteTextStyle.copyWith(
                    fontSize: 16, fontWeight: regular),
              ),
            ),
          )
        : Container(
            height: 48,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2.0, color: kPrimaryColor),
              ),
              child: Text(
                title,
                style: fullWhiteTextStyle.copyWith(
                    fontSize: 16, fontWeight: regular),
              ),
            ),
          );
  }
}
