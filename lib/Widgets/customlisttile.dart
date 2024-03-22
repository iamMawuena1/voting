import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class CustomListTile extends StatelessWidget {
  final CircleAvatar avatar;
  final String title;
  final String subtitle;
  final DateTime time;

  const CustomListTile({
    super.key,
    required this.avatar,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    String formattedTime = _formatTime(time);
    return ListTile(
      leading: avatar,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 11,
        ),
      ),
      trailing: Text(
        formattedTime,
        style: const TextStyle(
          fontSize: 11,
        ),
      ),
      tileColor: kWhite,
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour}:${time.minute < 10 ? '0' : ''}${time.minute}';
  }
}
