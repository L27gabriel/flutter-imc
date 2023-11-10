import 'package:flutter/material.dart';
import 'package:imc/components/input.dart';
import 'package:imc/components/my_drawer.dart';
import 'package:imc/models/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController heightPersonController = TextEditingController();
  TextEditingController weightPersonController = TextEditingController();

  String selectedValue = "feminino";

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
            Column(
              children: [
                const Text(
                  "Qual seu sexo?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
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
            ),
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
                        selectedValue,
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
