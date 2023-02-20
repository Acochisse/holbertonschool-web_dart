//Complete this source code in order to print 3 times a string stored in the variable str, followed by its first 9 characters.
void main() {
  String str = "Holberton School";
  for (int i = 0; i < 3; i++) {
    print(str);
  }
  for (int i = 0; i < 9; i++) {
    print(str[i]);
  }
  print("\n");
}