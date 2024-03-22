import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vote/constant.dart';
import 'package:vote/pages/screen/intro1.dart';
import 'package:vote/pages/screen/intro2.dart';
import 'package:vote/pages/screen/intro3.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  //controller to keep track of pages
  PageController controller = PageController();

  //keep track of last page
  bool isLastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastpage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              Intropage2(),
              Intropage3(),
            ],
          ),

          //page indicator
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '',
                  style: TextStyle(
                    color: black,
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: mainColor,
                    dotColor: Colors.grey,
                    spacing: 10,
                  ),
                ),
                isLastpage
                    ? const Text('')
                    : GestureDetector(
                        onTap: () {
                          controller.jumpToPage(2);
                        },
                        child: const Text('Skip >>'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
