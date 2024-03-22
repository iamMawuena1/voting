import 'package:flutter/material.dart';
import 'package:vote/constant.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController controller;
  final TextInputType keyBoardType;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    required this.keyBoardType,
    required this.label,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        TextFormField(
          controller: widget.controller,
          cursorColor: Colors.black,
          keyboardType: widget.keyBoardType,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            labelText: widget.hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: mainColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: mainColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: black),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: mainColor),
            ),
          ),
        ),
      ],
    );
  }
}
