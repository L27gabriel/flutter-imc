import 'package:flutter/material.dart';
import 'package:imc/components/input.dart';
import 'package:imc/components/my_drawer.dart';
import 'package:imc/components/my_radio.dart';
import 'package:imc/models/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController heightPersonController = TextEditingController();
  TextEditingController weightPersonController = TextEditingController();

  String selectedValue = "";

  String result = "";

  bool validate() {
    if (heightPersonController.text == "" &&
        weightPersonController.text == "") {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF111112),
        title: const Text(
          'Calcular IMC',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color(0xFF0C0C0D),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyRadio(),
            Input(
              controller: heightPersonController,
              labelText: "Altura",
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            Input(
              controller: weightPersonController,
              labelText: "Peso",
              textInputType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                ),
                onPressed: () {
                  if (validate()) {
                    var person = Person(
                        "masculino",
                        double.parse(heightPersonController.text),
                        double.parse(weightPersonController.text));

                    result = person.calculateImc(person);
                    setState(() {});
                  } else {
                    setState(() {
                      result = "Preencha todos os campos";
                    });
                  }
                },
                child: const Text(
                  "Calcular",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Center(
              child: Text(
                result,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
