import 'package:flutter/material.dart';

import '../../Widgets/button.dart';
import '../../constant.dart';

class Intropage2 extends StatefulWidget {
  const Intropage2({super.key});

  @override
  State<Intropage2> createState() => _Intropage2State();
}

class _Intropage2State extends State<Intropage2> {
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
                    'assets/vote.gif',
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
                  Navigator.pushNamed(context, '/page3');
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
