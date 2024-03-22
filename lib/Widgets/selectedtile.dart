import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class SelectedPageListTile extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final String description;
  final VoidCallback onDelete;
  final VoidCallback onAccept;

  const SelectedPageListTile({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onDelete,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(height: 50, width: 60, child: Image(image: image)),
      title: Text(title),
      subtitle: Text(description),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(
              Icons.delete,
              color: mainColor,
            ),
            onPressed: onDelete,
          ),
          IconButton(
            icon: const Icon(
              Icons.check,
              color: Colors.green,
            ),
            onPressed: onAccept,
          ),
        ],
      ),
    );
  }
}
