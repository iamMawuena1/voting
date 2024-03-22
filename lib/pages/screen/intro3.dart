import 'package:flutter/material.dart';

import '../../Widgets/button.dart';
import '../../constant.dart';

class Intropage3 extends StatefulWidget {
  const Intropage3({super.key});

  @override
  State<Intropage3> createState() => _Intropage3State();
}

class _Intropage3State extends State<Intropage3> {
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
                    'assets/girl2.gif',
                    width: 300,
                    height: 200,
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Bio-Vote, voting is just one click away',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              CustomButton(
                onpressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                height: 40,
                width: 147,
                child: const Text(
                  'Sign In',
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
