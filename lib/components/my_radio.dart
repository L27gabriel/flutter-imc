import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Qual seu sexo?",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        RadioListTile(
            title: const Text(
              "Feminino",
              style: TextStyle(color: Colors.white),
            ),
            value: "feminino",
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            }),
        RadioListTile(
            title: const Text(
              "Masculino",
              style: TextStyle(color: Colors.white),
            ),
            value: "masculino",
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            }),
      ],
    );
  }
}
