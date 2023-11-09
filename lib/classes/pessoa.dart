class Pessoa {
  String _nome = "";
  double _altura = 0.0;
  double _peso = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _altura = peso;
  }

  double getPeso() {
    return _peso;
  }

  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String calculoIMC() {
    var msg = "";
    double imc = 0.0;
    if (_peso > 0 || _altura > 0) {
      imc = _peso / (_altura * _altura);
    } else {
      msg = "Os valores de Peso e ALtura devem ser maiores que 0!";
      return msg;
    }
    switch (imc) {
      case < 16:
        msg = "Magreza grave!";
        break;
      case > 16 && < 17:
        msg = "Magreza moderada!";
        break;
      case >= 17 && < 18.5:
        msg = "Magreza leve!";
        break;
      case >= 18.5 && < 25:
        msg = "Saudável!";
        break;
      case >= 25 && < 30:
        msg = "Sobrepeso!";
        break;
      case >= 30 && < 35:
        msg = "Obesidade Grau I";
        break;
      case >= 35 && < 40:
        msg = "Obesidade Grau II";
        break;
      case >= 40:
        msg = "Obesidade Grau III";
        break;
    }
    if (imc > 25 || imc < 18.5) {
      double pesoIdeal = 25 * (_altura * _altura);
      msg =
          "$msg, seu IMC é $imc para o peso $_peso e altura $_altura. O peso maximo ideal seria de $pesoIdeal";
    } else {
      msg = "$msg, seu IMC é $imc para o peso $_peso} e altura $_altura.";
    }
    return msg;
  }
}
