import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';
import 'package:up_todo_app/ui/widgets/custom_back_button.dart';
import 'package:up_todo_app/ui/widgets/custom_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  Widget headline() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to UpTodo",
            style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
          ),
          const SizedBox(height: 26),
          Text(
            "Please login to your account or create\nnew account to continue",
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return CustomButton(
      title: "LOGIN",
      onPressed: () {
        Navigator.pushNamed(context, "/login");
      },
      margin: const EdgeInsets.only(bottom: 28, left: 24, right: 24,),
    );
  }

  Widget registerButton(BuildContext context) {
    return CustomButton(
      title: "CREATE ACCOUNT",
      onPressed: () {
        Navigator.pushNamed(context, "/register");
      },
      isActive: false,
      margin: const EdgeInsets.only(bottom: 30, left: 24, right: 24,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBackButton(),
            headline(),
            const Spacer(),
            loginButton(context),
            registerButton(context),
          ],
        ),
      ),
    );
  }
}
