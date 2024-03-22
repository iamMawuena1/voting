import 'package:flutter/material.dart';
import 'package:vote/Widgets/customlisttile.dart';
import 'package:vote/Widgets/drawer.dart';
import 'package:vote/Widgets/textfiled_widget.dart';
import 'package:vote/constant.dart';

class NotficationPage extends StatefulWidget {
  const NotficationPage({super.key});

  @override
  State<NotficationPage> createState() => _NotficationPageState();
}

class _NotficationPageState extends State<NotficationPage> {
  TextEditingController notificationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                hint: 'Search notification',
                controller: notificationController,
                keyBoardType: TextInputType.text,
                label: '',
              ),
              const SizedBox(height: 20),
              const Text(
                'Notification Box',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(
                color: mainColor,
              ),
              CustomListTile(
                avatar: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/child.png'),
                ),
                title: 'SRC',
                subtitle: 'la la la alla la',
                time: DateTime.now(),
              ),
              const Divider(
                color: mainColor,
              ),
              CustomListTile(
                avatar: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/child.png'),
                ),
                title: 'VVU-EC',
                subtitle: 'making sure you have a free and fair election',
                time: DateTime.now(),
              ),
              const Divider(
                color: mainColor,
              ),
              CustomListTile(
                avatar: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/child.png'),
                ),
                title: 'CoSSa',
                subtitle: 'Ensuring a smooth voting process',
                time: DateTime.now(),
              ),
              const Divider(
                color: mainColor,
              ),
              CustomListTile(
                avatar: const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/child.png'),
                ),
                title: 'Admin',
                subtitle: 'Welcome to Bio-vote',
                time: DateTime.now(),
              ),
              const Divider(
                color: mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
