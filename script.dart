// Importa dart:io para utilizar função de input
import 'dart:io';

void main(List<String> arguments) {
  // Retorna a função de resultado da soma
  print(resultSum());
}

// Função que recebe um número inteiro positivo e retorna o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado
String resultSum() {
  print('Digite um número: ');
  String? input = stdin.readLineSync()!;

  // Testa se o valor digitado é um número inteiro e positivo
  try {
    // Converte a string para um número inteiro (int)
    int number = int.parse(input);
    if (number > 0) {
      print('Você digitou o número: $number');
      int sum = 0;

      // Itera todos os números inferiores ao número digitado
      // Verifica se é divisível por 3 ou por 5
      // Imprime os valores lado a lado (sem quebra de linha)
      for (int i = 0; i < number; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
          sum += i;
          stdout.write('$i \u{2192} ');
        }
      }

      print('NÚMERO DIGITADO ($number)');
      
    return 'RESULTADO >> A soma dos números anteriores divisíveis por 3 e por 5 é: $sum';
    } else {
      return 'Entrada inválida. Certifique-se de que o número inteiro digitado seja positivo e diferente de zero.';
    }
  } catch (e) {
    return 'Entrada inválida. Certifique-se de inserir um número inteiro positivo.';
  }
}