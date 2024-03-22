import 'package:flutter/material.dart';
import 'package:vote/Widgets/button.dart';
import 'package:vote/constant.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: const IconThemeData(color: white),
      child: Drawer(
        backgroundColor: mainColor,
        width: MediaQuery.of(context).size.width * 0.6,
        child: ListView(
          children: [
            const SizedBox(height: 100),
            const Divider(thickness: 2.0),
            SideBarWidget(
              onTap: () => Navigator.pushNamed(context, '/homepage'),
              text: 'Home',
              iconData: Icons.home_filled,
            ),
            const Divider(thickness: 2.0),
            SideBarWidget(
              onTap: () => Navigator.pushNamed(context, '/notification'),
              text: 'Notification',
              iconData: Icons.notifications,
            ),
            const Divider(thickness: 2.0),
            SideBarWidget(
              onTap: () => Navigator.pushNamed(context, '/account'),
              text: 'Account',
              iconData: Icons.person_2_outlined,
            ),
            const Divider(thickness: 2.0),
            SideBarWidget(
              onTap: () => Navigator.pushNamed(context, '/selected'),
              text: 'Selected',
              iconData: Icons.favorite_outline,
            ),
            const Divider(thickness: 2),
            const SizedBox(height: 200),
            SideBarWidget(
              text: 'Logout',
              iconData: Icons.logout_outlined,
              onTap: () => showLogoutDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBarWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final void Function()? onTap;
  const SideBarWidget({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: white,
              size: 30,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Logout',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      content: const Text(
        'Are you sure you want to logout?',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onpressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/login');
              },
              height: 46,
              width: 88,
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 10),
            CustomButton(
              onpressed: () {
                Navigator.of(context).pop();
              },
              height: 46,
              width: 88,
              child: const Text(
                "No",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const LogoutDialog();
    },
  );
}
