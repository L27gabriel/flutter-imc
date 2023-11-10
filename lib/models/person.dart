class Person {
  late final String sex;
  late final double height;
  late final double weight;

  Person(this.sex, this.height, this.weight);

  String calculateImc(Person person) {
    String phrase = "";

    double imc = person.weight / (person.height * person.height);

    if (person.sex == "masculino") {
      if (imc < 20.7) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está abaixo do peso";
      } else if (imc >= 20.7 && imc <= 26.4) {
        phrase = "Seu imc é ${imc.toStringAsFixed(1)} e você está peso ideal";
      } else if (imc >= 26.5 && imc <= 27.8) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está pouco acima do peso";
      } else if (imc >= 27.9 && imc <= 31.1) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está acima do peso";
      } else if (imc >= 31.2) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está com Obesidade";
      }

      return phrase;
    } else {
      if (imc < 19.1) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está abaixo do peso";
      } else if (imc >= 19.1 && imc <= 25.8) {
        phrase = "Seu imc é ${imc.toStringAsFixed(1)} e você está peso ideal";
      } else if (imc >= 25.9 && imc <= 27.3) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está pouco acima do peso";
      } else if (imc >= 27.4 && imc <= 32.3) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está acima do peso";
      } else if (imc >= 32.4) {
        phrase =
            "Seu imc é ${imc.toStringAsFixed(1)} e você está com Obesidade";
      }
      return phrase;
    }
  }
}
