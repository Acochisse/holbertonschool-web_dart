//Complete this source code in order to print 3 times a string stored in the variable str, followed by its first 9 characters.
void main() {
  String str = "Holberton School";
  print('${str}${str}${str}\n${str.substring(0, 9)}\n');
}