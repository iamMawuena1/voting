import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/Widgets/homebutton.dart';
import 'package:vote/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homepage',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/homepage'),
                  child: HomeButtons(
                    text: 'Categories',
                    isSelected: selectedIndex == 0,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/selected'),
                  child: HomeButtons(
                    text: 'Selected',
                    isSelected: selectedIndex == 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
