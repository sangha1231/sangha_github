import 'dart:io';
import 'dart:math';

/// 도형 종류 열거형
enum ShapeType { rectangle, circle, triangle }

void main() {
  print('도형 크기 계산기');
  print('1: 사각형  2: 원  3: 삼각형');
  stdout.write('계산할 도형 번호를 입력하세요: ');
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      _handleRectangle();
      break;
    case '2':
      _handleCircle();
      break;
    case '3':
      _handleTriangle();
      break;
    default:
      print('잘못된 선택입니다. 프로그램을 종료합니다.');
  }
}

/// 사각형 처리: 가로(width)와 세로(height) 입력받아 넓이와 둘레 계산
void _handleRectangle() {
  double width = _readDouble('가로 길이를 입력하세요: ');
  double height = _readDouble('세로 길이를 입력하세요: ');
  double area = width * height;
  double perimeter = 2 * (width + height);

  print('사각형 넓이: ${area.toStringAsFixed(2)}');
  print('사각형 둘레: ${perimeter.toStringAsFixed(2)}');
}

/// 원 처리: 반지름(radius) 입력받아 넓이와 둘레 계산
void _handleCircle() {
  double radius = _readDouble('반지름을 입력하세요: ');
  double area = pi * pow(radius, 2);
  double circumference = 2 * pi * radius;

  print('원 넓이: ${area.toStringAsFixed(2)}');
  print('원 둘레: ${circumference.toStringAsFixed(2)}');
}

/// 삼각형 처리: 세 변 길이(a, b, c) 입력받아 넓이(헤론 공식)와 둘레 계산
void _handleTriangle() {
  double a = _readDouble('첫 번째 변 길이를 입력하세요: ');
  double b = _readDouble('두 번째 변 길이를 입력하세요: ');
  double c = _readDouble('세 번째 변 길이를 입력하세요: ');

  if (!_isValidTriangle(a, b, c)) {
    print('유효한 삼각형이 아닙니다.');
    return;
  }

  double perimeter = a + b + c;
  double s = perimeter / 2; // 반둘레
  double area = sqrt(s * (s - a) * (s - b) * (s - c));

  print('삼각형 넓이: ${area.toStringAsFixed(2)}');
  print('삼각형 둘레: ${perimeter.toStringAsFixed(2)}');
}

/// 숫자 입력을 편리하게 처리하는 헬퍼 함수
double _readDouble(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) {
      continue;
    }
    double? value = double.tryParse(input);
    if (value != null) {
      return value;
    }
    print('유효한 숫자를 입력해주세요.');
  }
}

/// 삼각형 유효성 검사: 가장 긴 변 < 나머지 두 변 합
bool _isValidTriangle(double a, double b, double c) {
  double maxSide = max(a, max(b, c));
  double sum = a + b + c;
  return maxSide < (sum - maxSide);
}
