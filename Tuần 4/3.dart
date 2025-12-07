import 'dart:io';

void main() {
  // Đọc số lượng que n
  String? nLine = stdin.readLineSync();
  if (nLine == null || nLine.trim().isEmpty) return;
  int n = int.parse(nLine.trim());

  // Đọc n số nguyên - độ dài các que
  String? arrLine = stdin.readLineSync();
  if (arrLine == null || arrLine.trim().isEmpty) return;

  List<int> arr = arrLine.trim().split(RegExp(r'\s+')).map(int.parse).toList();

  List<int> result = cutTheSticks(arr);

  // In từng dòng
  for (final x in result) {
    print(x);
  }
}

List<int> cutTheSticks(List<int> arr) {
  arr.sort();
  int n = arr.length;
  List<int> result = [];

  for (int i = 0; i < n; i++) {
    if (i == 0 || arr[i] != arr[i - 1]) {
      int sticksLeft = n - i;
      result.add(sticksLeft);
    }
  }

  return result;
}
