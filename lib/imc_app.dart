import 'package:imc_app/classes/pessoa.dart';
import 'package:imc_app/functions/utils.dart';

void imcApp() {
  print("");
  print("");
  print("*************************");
  print("** Calculadora de IMC! **");
  print("*************************");
  String nome = utils().lerConsole("Digite o seu nome:");
  print("");
  String altura = utils().lerConsole("Digite o sua altura em Metros:");
  print("");
  String peso = utils().lerConsole("Digite o seu peso em Kg:");
  print("");
  var pessoa = Pessoa(nome, double.parse(altura), double.parse(peso));
  var calculoIMC = pessoa.calculoIMC();
  print(calculoIMC);
  print("");
  print("");
}
