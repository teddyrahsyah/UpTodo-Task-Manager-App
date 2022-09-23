import 'package:flutter/material.dart';
import 'package:up_todo_app/shared/theme.dart';
import 'package:up_todo_app/ui/widgets/custom_intro_text_button.dart';
import 'package:up_todo_app/ui/widgets/intro_item.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int pageCounter = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: 3,
              controller: _controller,
              itemBuilder: (context, index) {
                return IntroItem(index: index);
              },
              onPageChanged: (page) {
                setState(() {
                  pageCounter = page;
                });
              },
            ),
            CustomIntroTextButton(
              title: "SKIP",
              width: 80,
              margin: const EdgeInsets.only(left: 8, top: 8),
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.pushNamed(context, "/start");
              },
              buttonColor: kTransparentColor,
            ),
            CustomIntroTextButton(
              title: "BACK",
              width: 80,
              margin: const EdgeInsets.only(left: 8, bottom: 8),
              alignment: Alignment.bottomLeft,
              onPressed: () {
                if (_controller.hasClients && pageCounter > 0) {
                  _controller.animateToPage(
                    --pageCounter,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }
              },
              buttonColor: kTransparentColor,
            ),
            CustomIntroTextButton(
              title: pageCounter < 2 ? "NEXT" : "GET STARTED",
              width: pageCounter < 2 ? 90 : 150,
              margin: const EdgeInsets.only(right: 14, bottom: 8),
              alignment: Alignment.bottomRight,
              onPressed: () {
                if (_controller.hasClients && pageCounter < 2) {
                  _controller.animateToPage(
                    ++pageCounter,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else if (pageCounter == 2) {
                  Navigator.pushNamed(context, "/start");
                }
              },
              buttonColor: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
