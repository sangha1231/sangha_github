void main() {
  int number = 12345678; // 예시 입력
  String s = number.toString();
  int sum = 0;
  for (int i = 0; i < s.length; i += 2) {
    sum += int.parse(s.substring(i, i + 2));
  }
  print(sum);
}
