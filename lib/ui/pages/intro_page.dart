import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';
import 'package:up_todo_app/ui/widgets/custom_intro_text_button.dart';
import 'package:up_todo_app/ui/widgets/intro_item.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              children: const [
                IntroItem(
                  index: 0,
                  imagePath: "assets/images/img_intro_1.png",
                  title: "Manage your tasks",
                  subtitle:
                      "You can easily manage all of your daily\ntasks in DoMe for free",
                ),
                IntroItem(
                  index: 1,
                  imagePath: "assets/images/img_intro_2.png",
                  title: "Create daily routine",
                  subtitle:
                  "In Uptodo  you can create your\npersonalized routine to stay productive",
                ),
                IntroItem(
                  index: 2,
                  imagePath: "assets/images/img_intro_3.png",
                  title: "Organize your tasks",
                  subtitle:
                  "You can organize your daily tasks by\nadding your tasks into separate categories",
                ),
              ],
            ),
            CustomIntroTextButton(
              title: "SKIP",
              width: 80,
              margin: EdgeInsets.only(left: 8, top: 8),
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.pushNamed(context, "/start");
              },
              buttonColor: kTransparentColor,
            ),
            CustomIntroTextButton(
              title: "BACK",
              width: 80,
              margin: EdgeInsets.only(left: 8, bottom: 8),
              alignment: Alignment.bottomLeft,
              onPressed: () {},
              buttonColor: kTransparentColor,
            ),
            CustomIntroTextButton(
              title: "NEXT",
              width: 80,
              margin: EdgeInsets.only(right: 14, bottom: 8),
              alignment: Alignment.bottomRight,
              onPressed: () {},
              buttonColor: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
