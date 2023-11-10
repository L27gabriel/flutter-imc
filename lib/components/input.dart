import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  Input(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.textInputType});

  TextEditingController controller = TextEditingController();
  final String labelText;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}
