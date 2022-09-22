import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';

class IntroItem extends StatelessWidget {
  final int index;
  final String imagePath;
  final String title;
  final String subtitle;

  const IntroItem({
    Key? key,
    required this.index,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

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
                  image: DecorationImage(
                      image: AssetImage(imagePath))),
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
              title,
              style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
            ),
            SizedBox(height: 40),
            Text(
              subtitle,
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
