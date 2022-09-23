import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class IntroItem extends StatelessWidget {
  final int index;

  IntroItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final List<String> title = [
    "Manage your tasks",
    "Create daily routine",
    "Organize your tasks",
  ];

  final List<String> subtitle = [
    "You can easily manage all of your daily\ntasks in DoMe for free",
    "In Uptodo  you can create your\npersonalized routine to stay productive",
    "You can organize your daily tasks by\nadding your tasks into separate categories",
  ];

  final List<String> imagePath = [
    "assets/images/img_intro_1.png",
    "assets/images/img_intro_2.png",
    "assets/images/img_intro_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    Widget imageAndIndicator() {
      return Container(
        child: Column(
          children: [
            Container(
              width: 213,
              height: 278,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath[index]))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 26,
                  height: 4,
                  margin: EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
                Container(
                  width: 26,
                  height: 4,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
                Container(
                  width: 26,
                  height: 4,
                  margin: EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget titleAndSubtitle() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Text(
              title[index],
              style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            ),
            SizedBox(height: 40),
            Text(
              subtitle[index],
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          imageAndIndicator(),
          titleAndSubtitle(),
        ],
      ),
    );
  }
}
