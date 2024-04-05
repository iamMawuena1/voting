import 'package:flutter/material.dart';
import 'package:vote/Widgets/button.dart';
import 'package:vote/Widgets/textfiled_widget.dart';
import 'package:vote/constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(
        context,
        nameController,
        idController,
        passwordController,
        confirmPasswordController,
      );
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
}

void _showBottomSheet(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController idController,
    TextEditingController passwordController,
    TextEditingController confirmPasswordContoller) {
  showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: white,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const Text(
                    'Create an Account! ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    label: 'Name',
                    hint: 'Enter name',
                    controller: nameController,
                    keyBoardType: TextInputType.text,
                  ),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
                  CustomTextField(
                    label: 'Confirm Password',
                    hint: 'Confirm Password',
                    controller: confirmPasswordContoller,
                    keyBoardType: TextInputType.text,
                  ),
                  const SizedBox(height: 10),
                  //Sign up button
                  Row(
                    children: [
                      CustomButton(
                        onpressed: () {
                          //add your code to navigate you to the homepage
                          Navigator.pushNamed(context, '/homepage');
                        },
                        height: 46,
                        width: 225,
                        child: const Text(
                          'Sign Up',
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
          ),
        );
      });
}
