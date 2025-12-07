import 'dart:io';

void main() {
  // Đọc dòng đầu: số test case t
  String? tLine = stdin.readLineSync();
  if (tLine == null || tLine.trim().isEmpty) return;
  int t = int.parse(tLine.trim());

  for (int i = 0; i < t; i++) {
    // Mỗi test case là một dòng: n m s
    String? line = stdin.readLineSync();
    if (line == null || line.trim().isEmpty) return;

    List<String> parts = line.trim().split(RegExp(r'\s+'));
    int n = int.parse(parts[0]); // số tù nhân
    int m = int.parse(parts[1]); // số kẹo
    int s = int.parse(parts[2]); // ghế bắt đầu

    int result = saveThePrisoner(n, m, s);
    print(result);
  }
}

int saveThePrisoner(int n, int m, int s) {
  int ans = (s + m - 1) % n;
  if (ans == 0) ans = n;
  return ans;
}
