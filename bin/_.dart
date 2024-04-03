import '../lib/geranumero.dart';
import '../lib/usuario.dart';
import 'dart:io';

void main(List<String> arguments) {
  Usuario user = Usuario();
  var valor = GerarNumero();
  bool sair = false;
  int numeroParaAdivinhar = 0;

  // Identificação do usuário

  print("Por favor, diga o seu nome: ");
  user.alteraNome = stdin.readLineSync().toString();

  print("Por favor, diga a sua idade: ");
  user.alterarIdade = stdin.readLineSync().toString();

  // Definir os números aleatórios

  print('Qual o intervalo de aleatórios (inteiros começando de 0 até x)? x = ');
  valor.num = int.parse(stdin.readLineSync()!);
  valor.geraNumero(valor.num);

  // Apresentação do jogo

  print('Bem-Vindo Jogador!!!!!');
  print(
      'Já sei que seu nome é ${user.obterNome} e sua idade é de ${user.obterIdade}');
  print('Você escolheu o intervalo de [0,${valor.num}]');

  // Iniciar o jogo

  while (sair == false) {
    var temp = 0;
    valor.geraNumero(valor.num);

    print('Adivinhe o número: ');
    numeroParaAdivinhar = int.parse(stdin.readLineSync()!);

    print(valor.adivinhaNumero(numeroParaAdivinhar));
    print('Para SIM aperte (1), já para NÃO aperte (2)');
    temp = int.parse(stdin.readLineSync()!);
    switch (temp) {
      case 1:
        continue;
      case 2:
        sair = true;
      default:
        print('Como você nada escolheu, vou continuar!');
    }
  }

  print('Obrigado por jogar conosco!!!!!!!!');
}
