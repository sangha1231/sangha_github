import 'dart:io';

void main() {
  print("출력할 구구단의 단을 입력하세요:");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null || number <= 0) {
    print("잘못된 입력입니다. 양의 정수를 입력하세요.");
    return;
  }

  print("\n=== $number 단 ===");
  for (int i = 1; i <= 9; i++) {
    print("$number × $i = ${number * i}");
  }
}