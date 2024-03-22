import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCategoryButtonPressed = false;
  bool isSelectedButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isCategoryButtonPressed = !isCategoryButtonPressed;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return mainColor; // Background color when pressed
                      }
                      return isCategoryButtonPressed
                          ? white
                          : mainColor; // Background color when not pressed
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return isCategoryButtonPressed ||
                              states.contains(MaterialState.pressed)
                          ? white
                          : black; // Text color
                    }),
                  ),
                  child: Text('Categories'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelectedButtonPressed = !isSelectedButtonPressed;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return mainColor; // Background color when pressed
                      }
                      return isSelectedButtonPressed
                          ? white
                          : mainColor; // Background color when not pressed
                    }),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return isSelectedButtonPressed ||
                              states.contains(MaterialState.pressed)
                          ? white
                          : black; // Text color
                    }),
                  ),
                  child: Text('Selected'),
                ),
              ],
            ),
          ],
        ));
  }
}
