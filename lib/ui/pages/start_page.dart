import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';
import 'package:up_todo_app/ui/widgets/custom_back_button.dart';
import 'package:up_todo_app/ui/widgets/custom_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  Widget headline() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to UpTodo",
            style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
          ),
          SizedBox(height: 26),
          Text(
            "Please login to your account or create\nnew account to continue",
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 28, left: 24, right: 24,),
      child: CustomButton(
        title: "LOGIN",
        onPressed: () {},
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 30, left: 24, right: 24,),
      child: CustomButton(
        title: "CREATE ACCOUNT",
        onPressed: () {},
        isActive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              headline(),
              Spacer(),
              loginButton(),
              registerButton(),
            ],
          ),
        ),
      ),
    );
  }
}
