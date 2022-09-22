import 'dart:async';

import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, "/intro");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/icon_logo.png",
              width: 113,
              height: 113,
            ),
            const SizedBox(height: 20),
            Text(
              "UpTodo",
              style: fullWhiteTextStyle.copyWith(fontSize: 40, fontWeight: bold),
            )
          ],
        ),
      ),
    );
  }
}
