import 'package:flutter/material.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/constant.dart';

class NotficationPage extends StatefulWidget {
  const NotficationPage({super.key});

  @override
  State<NotficationPage> createState() => _NotficationPageState();
}

class _NotficationPageState extends State<NotficationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      drawer: const CustomDrawer(),
    );
  }
}
