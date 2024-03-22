import 'package:flutter/material.dart';
import 'package:vote/Widgets/button.dart';

import '../../constant.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/girl1.gif',
                    width: 500,
                    height: 300,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'With Bio-Vote you can vote from the comfort of your homes!',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              CustomButton(
                onpressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                height: 40,
                width: 147,
                child: const Text(
                  'Next',
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
