import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/constant.dart';

class SelectedPage extends StatefulWidget {
  const SelectedPage({super.key});

  @override
  State<SelectedPage> createState() => _SelectedPageState();
}

class _SelectedPageState extends State<SelectedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text("Selected"),
      ),
    );
  }
}
