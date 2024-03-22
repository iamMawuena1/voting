import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/Widgets/homebutton.dart';
import 'package:vote/Widgets/selectedtile.dart';
import 'package:vote/constant.dart';

class SelectedPage extends StatefulWidget {
  const SelectedPage({super.key});

  @override
  State<SelectedPage> createState() => _SelectedPageState();
}

class _SelectedPageState extends State<SelectedPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selected',
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
                    isSelected: selectedIndex == 1,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/selected'),
                  child: HomeButtons(
                    text: 'Selected',
                    isSelected: selectedIndex == 0,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: mainColor),
          SelectedPageListTile(
            image: const AssetImage('assets/child.png'),
            title: 'Ruth Kuwornu',
            description: 'President',
            onDelete: () {},
            onAccept: () {},
          ),
          const Divider(color: mainColor),
          SelectedPageListTile(
            image: const AssetImage('assets/child.png'),
            title: 'Prince Abavon',
            description: 'Vice-President',
            onDelete: () {},
            onAccept: () {},
          ),
          const Divider(color: mainColor),
          SelectedPageListTile(
            image: const AssetImage('assets/child.png'),
            title: 'Joshua Quaye',
            description: 'Organiser',
            onDelete: () {},
            onAccept: () {},
          ),
          const Divider(color: mainColor),
          SelectedPageListTile(
            image: const AssetImage('assets/child.png'),
            title: 'Mawusi',
            description: 'Financial Officer',
            onDelete: () {},
            onAccept: () {},
          ),
          const Divider(color: mainColor),
          SelectedPageListTile(
            image: const AssetImage('assets/child.png'),
            title: 'OD',
            description: 'PRO',
            onDelete: () {},
            onAccept: () {},
          ),
          const Divider(color: mainColor),
        ],
      ),
    );
  }
}
