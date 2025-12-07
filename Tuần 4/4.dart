import 'dart:io';

void main() {
  stdin.readLineSync(); // bỏ qua n
  List<int> c = stdin
      .readLineSync()!
      .trim()
      .split(RegExp(r'\s+'))
      .map(int.parse)
      .toList();

  print(jumpingOnClouds(c));
}

int jumpingOnClouds(List<int> c) {
  int i = 0;
  int steps = 0;
  int n = c.length;

  while (i < n - 1) {
    if (i + 2 < n && c[i + 2] == 0) {
      i += 2;
    } else {
      i += 1;
    }
    steps++;
  }

  return steps;
}
