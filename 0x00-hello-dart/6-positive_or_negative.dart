void main(List<String> args) {
  var number = int.parse(args[0]);
    if (number == 0) {
        print('${number} is zero\n');
        return;
    }
    if (number => 1) {
        print('${number} is positive\n');
        return;
    }
    if (number < 0) {
        print('${number} is negative\n');
        return;
    }
}