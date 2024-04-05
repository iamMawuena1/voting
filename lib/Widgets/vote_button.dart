import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class VoteButton extends StatelessWidget {
  final double width;
  final double height;
  final void Function()? votePressed;
  const VoteButton({
    super.key,
    required this.width,
    required this.height,
    required this.votePressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: votePressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        minimumSize: Size(
          width,
          height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        "Vote",
        style: TextStyle(
          color: white,
        ),
      ),
    );
  }
}
