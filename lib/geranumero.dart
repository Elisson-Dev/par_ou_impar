import 'dart:math';

class GerarNumero {
  int num = 0;
  int aleatorio = 0;
  var random = Random();

  int geraNumero(int num) {
    aleatorio = random.nextInt(num);
    return aleatorio;
  }

  String adivinhaNumero(int numero) {
    if (numero == aleatorio) {
      return 'Você acertou! Quer tentar novamente? ';
    } else {
      return 'Você errou! Numero correto é $aleatorio. Novamente?';
    }
  }
}
