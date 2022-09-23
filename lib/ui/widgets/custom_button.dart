import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final bool isActive;
  final String iconPath;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.isActive = true,
    this.iconPath = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            height: 48,
            width: double.infinity,
            margin: margin,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                primary: kBackgroundColor,
              ),
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
            margin: margin,
            child: OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  primary: kPrimaryColor,
                  side: BorderSide(width: 2.0, color: kPrimaryColor),
                ),
                child: iconPath.isEmpty
                    ? Text(
                        title,
                        style: fullWhiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(iconPath),
                            )),
                          ),
                          Text(
                            title,
                            style: fullWhiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: regular),
                          ),
                        ],
                      )),
          );
  }
}
