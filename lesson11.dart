import "dart:io";

void main(List<String> args) {
  // int chislo = int.parse(stdin.readLineSync()!);
  // if (chislo > 100 || chislo < 0) {
  //   print("Error");
  // } else {
  // binarySearch(chislo);
  func2();
}

void binarySearch(int chislo) {
  int count = 1;
  int min = 1;
  int max = 100;
  int mid = (min + max) ~/ 2;
  while (chislo != mid) {
    if (chislo > mid) {
      min = mid;
      mid = (min + max) ~/ 2;
      count++;
    } else {
      max = mid;
      mid = (min + max) ~/ 2;
      count++;
    }
  }
  print(count);
}

void func2() {
  int count = 1;
  int min = 1;
  int max = 100;
  int mid;
  String? usersAnswer;
  while (true) {
    mid = (min + max) ~/ 2;
    print("vashe chislo больше чем - $mid - или меньше?");
    String usersAnswer = stdin.readLineSync()!;
    if (usersAnswer == "=") {
      break;
    } else if (usersAnswer == "+") {
      min = mid;
      mid = (min + max) ~/ 2;
      count++;
      print("mid-$mid");
    } else if (usersAnswer == "-") {
      max = mid;
      mid = (min + max) ~/ 2;
      count++;
      print("mid-$mid");
    }
  }
  print("С $count раза");
}
