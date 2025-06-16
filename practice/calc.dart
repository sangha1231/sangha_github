import 'dart:io';

void main() {
  print('간단한 계산기');
  
  stdout.write('첫 번째 숫자를 입력하세요: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('연산자를 입력하세요 (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  stdout.write('두 번째 숫자를 입력하세요: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('0으로 나눌 수 없습니다.');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('지원하지 않는 연산자입니다.');
      return;
  }

  print('결과: $result');
}
