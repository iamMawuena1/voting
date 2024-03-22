import 'package:flutter/material.dart';
import 'package:vote/Widgets/button.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/Widgets/textfiled_widget.dart';
import 'package:vote/constant.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Account',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: white,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: mainColor,
        ),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  child: Image.asset('assets/child.png'),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Maxwell Duah',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hint: 'Name',
                  controller: nameController,
                  keyBoardType: TextInputType.text,
                  label: 'Name',
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hint: 'ID Number',
                  controller: idController,
                  keyBoardType: TextInputType.text,
                  label: 'ID Number',
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hint: 'Username',
                  controller: usernameController,
                  keyBoardType: TextInputType.text,
                  label: 'Username',
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hint: 'Password',
                  controller: passwordController,
                  keyBoardType: TextInputType.text,
                  label: 'Password',
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onpressed: () {},
                  height: 45.23,
                  width: 146,
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
