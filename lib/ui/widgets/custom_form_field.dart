import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final EdgeInsets margin;

  const CustomFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
          ),
          const SizedBox(height: 8),
          TextFormField(
            style: fullWhiteTextStyle,
            cursorColor: kFullWhiteColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: kFormColor,
              hintText: hintText,
              hintStyle: grayTextStyle.copyWith(
                color: const Color(0xff535353),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                  color: kGrayColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
