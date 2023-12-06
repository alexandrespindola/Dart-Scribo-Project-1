import 'dart:io';

void main(List<String> arguments) {
  print(resultSum());
}

String resultSum() {
  print('Digite um número: ');
  String? input = stdin.readLineSync()!;

  // Converte a string para um número inteiro (int)
  try {
    int number = int.parse(input);
    // Verifica se o número inteiro é positivo
    if (number > 0) {
      print('Você digitou o número: $number');
      int sum = 0;
      for (int i = 0; i < number; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          sum += i;
          stdout.write('$i \u{2192} ');
        }
      }
      print('NÚMERO DIGITADO ($number)');
    return 'RESULTADO >> A soma dos números anteriores divisíveis por 3 e por 5 é: $sum';
    } else {
      return 'Entrada inválida. Certifique-se de que o número inteiro digitado seja positivo.';
    }
  } catch (e) {
    return 'Entrada inválida. Certifique-se de inserir um número inteiro positivo.';
  }
}