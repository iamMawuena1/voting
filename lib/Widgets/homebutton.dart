import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class HomeButtons extends StatelessWidget {
  final String text;
  final bool isSelected;
  const HomeButtons({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 109,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? mainColor : black,
          width: 1,
        ),
        color: isSelected ? mainColor : white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? white : black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
