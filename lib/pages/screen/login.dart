import 'package:flutter/material.dart';
import 'package:vote/Widgets/button.dart';
import 'package:vote/Widgets/textfiled_widget.dart';
import 'package:vote/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Trigger the bottom sheet when the screen is loaded
      _showBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
          child: Stack(
            children: [
              // Positioned the image within the Stack
              Positioned(
                left: 40,
                top: 140,
                right: 40,
                child: Image.asset(
                  'assets/man.png',
                  fit: BoxFit.fitHeight,
                  width: 243.68,
                  height: 196,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Sign-in into ' '\n' ' your account! ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      label: 'ID Number',
                      hint: 'ID Number',
                      controller: idController,
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      label: 'Password',
                      hint: 'Password',
                      controller: passwordController,
                      keyBoardType: TextInputType.text,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        CustomButton(
                          onpressed: () {
                            //Add your logins to navigate you to the homepae
                            Navigator.pushNamed(context, '/homepage');
                          },
                          height: 46,
                          width: 225,
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        CustomButton(
                          onpressed: () {},
                          height: 46,
                          width: 65,
                          child: const Icon(
                            Icons.face_2_outlined,
                            color: white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an Account? ',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Register here!',
                      style: TextStyle(
                        color: blue,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
