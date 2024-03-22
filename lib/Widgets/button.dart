import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onpressed;
  final Widget child;
  final double height;
  final double width;

  const CustomButton({
    super.key,
    required this.onpressed,
    required this.child,
    required this.height,
    required this.width,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        minimumSize: Size(
          widget.width,
          widget.height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: widget.child,
    );
  }
}
