import 'dart:io';

void main() {
  // Đọc dòng đầu tiên: số test case t
  String? tLine = stdin.readLineSync();
  if (tLine == null || tLine.trim().isEmpty) {
    return; // không có input thì thoát
  }
  int t = int.parse(tLine.trim());

  for (int i = 0; i < t; i++) {
    // Mỗi vòng lặp đọc 1 số n ở một dòng mới
    String? nLine = stdin.readLineSync();
    if (nLine == null || nLine.trim().isEmpty) {
      return; // thiếu input thì thoát
    }
    int n = int.parse(nLine.trim());
    print(findDigits(n));
  }
}

int findDigits(int n) {
  int original = n;
  int count = 0;

  while (n > 0) {
    int digit = n % 10;
    if (digit != 0 && original % digit == 0) {
      count++;
    }
    n = n ~/ 10;
  }

  return count;
}
