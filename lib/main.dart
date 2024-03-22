import 'package:flutter/material.dart';
import 'package:vote/pages/homepage.dart';
import 'package:vote/pages/onbaording.dart';
import 'package:vote/pages/screen/account.dart';
import 'package:vote/pages/screen/intro2.dart';
import 'package:vote/pages/screen/intro3.dart';
import 'package:vote/pages/screen/login.dart';
import 'package:vote/pages/screen/notification.dart';
import 'package:vote/pages/screen/selected.dart';
import 'package:vote/pages/screen/signup.dart';
import 'package:vote/pages/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homepage': (context) => const HomePage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/page2': (context) => const Intropage2(),
        '/page3': (context) => const Intropage3(),
        '/selected': (context) => const SelectedPage(),
        '/account': (context) => const AccountPage(),
        '/notification': (context) => const NotficationPage(),
      },
      home: const SplashScreen(),
    );
  }
}
