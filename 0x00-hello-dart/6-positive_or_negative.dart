void main(List<String> args) {
  var number = int.parse(args[0]);
    if (number == 0) {
        print('${number} is zero');
        return;
    }
    if (number => 1) {
        print('${number} is positive');
        return;
    }
    if (number < 0) {
        print('${number} is negative');
        return;
    }
}