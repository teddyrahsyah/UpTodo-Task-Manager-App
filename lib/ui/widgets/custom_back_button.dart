import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 10),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset(
          "assets/icons/icon_back.png",
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}