import 'dart:io';

void main() {
  String? nLine = stdin.readLineSync();
  if (nLine == null || nLine.trim().isEmpty) return;
  int n = int.parse(nLine.trim());

  String? arrLine = stdin.readLineSync();
  if (arrLine == null || arrLine.trim().isEmpty) return;

  List<int> arr = arrLine.trim().split(RegExp(r'\s+')).map(int.parse).toList();

  int result = equalizeArray(arr);

  print(result);
}

int equalizeArray(List<int> arr) {
  Map<int, int> freq = {};

  for (int x in arr) {
    freq[x] = (freq[x] ?? 0) + 1;
  }

  int maxFrequency = 0;
  for (int count in freq.values) {
    if (count > maxFrequency) {
      maxFrequency = count;
    }
  }

  return arr.length - maxFrequency;
}
