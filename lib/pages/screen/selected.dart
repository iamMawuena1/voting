import 'package:flutter/material.dart';

class SelectedPage extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final String candidateName;
  final Function onDelete;

  const SelectedPage({
    super.key,
    required this.imagePath,
    required this.categoryName,
    required this.candidateName,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                radius: 30, backgroundImage: AssetImage(imagePath)),
            title: Text(
              categoryName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              candidateName,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () => onDelete(),
            ),
          ),
        ],
      ),
    );
  }
}
