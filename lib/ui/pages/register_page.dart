import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';
import 'package:up_todo_app/ui/widgets/custom_back_button.dart';
import 'package:up_todo_app/ui/widgets/custom_button.dart';
import 'package:up_todo_app/ui/widgets/custom_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headline() {
      return Container(
        margin: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Text(
          "Register",
          style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
        ),
      );
    }

    Widget inputSection() {
      Widget usernameFormField() {
        return const CustomFormField(
          label: "Username",
          hintText: "Enter your Username",
          margin: EdgeInsets.only(top: 52),
        );
      }

      Widget passwordFormField() {
        return const CustomFormField(
          label: "Password",
          hintText: "Enter your Password",
          obscureText: true,
          margin: EdgeInsets.only(top: 25),
        );
      }

      Widget confirmPasswordFormField() {
        return const CustomFormField(
          label: "Confirm Password",
          hintText: "Enter your Password again",
          obscureText: true,
          margin: EdgeInsets.only(top: 25),
        );
      }

      Widget registerButton() {
        return CustomButton(
          title: "Register",
          onPressed: () {},
          margin: const EdgeInsets.only(top: 35),
        );
      }

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            usernameFormField(),
            passwordFormField(),
            confirmPasswordFormField(),
            registerButton(),
          ],
        ),
      );
    }

    Widget optionSeparator() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                endIndent: 5,
                thickness: 1,
                color: kGrayColor,
              ),
            ),
            const SizedBox(width: 3),
            SizedBox(
              height: 24,
              child: Text(
                "or",
                style:
                grayTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              ),
            ),
            const SizedBox(width: 3),
            Expanded(
              child: Divider(
                indent: 5,
                thickness: 1,
                color: kGrayColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget registerOption() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomButton(
              title: "Register with Google",
              onPressed: () {},
              isActive: false,
              iconPath: "assets/icons/icon_google.png",
            ),
            const SizedBox(height: 20),
            CustomButton(
              title: "Register with Apple",
              onPressed: () {},
              isActive: false,
              iconPath: "assets/icons/icon_apple.png",
            ),
          ],
        ),
      );
    }

    Widget loginPageButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/login");
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
                text: 'Already have an account?',
                style:
                grayTextStyle.copyWith(fontSize: 12, fontWeight: regular),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Login',
                    style: whiteTextStyle.copyWith(
                        fontSize: 12, fontWeight: regular),
                  )
                ]),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              headline(),
              inputSection(),
              optionSeparator(),
              registerOption(),
              loginPageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
