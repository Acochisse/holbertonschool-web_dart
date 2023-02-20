// Write three functions in dart the first function add() that accepts two arguments a, b and return the sum. And the secode function sub() that accepts two arguments a, b and return Subtraction of them. The third function showFunc() that returns a message with the output of the two other function.

// First Function prototype : int add(int a, int b)
// Second Function prototype : int sub(int a, int b)
// Third Function prototype : String showFunc(int a, int b)
// Function contain only two line :
// str => String : Contain the output With new line between Add and Sub
// Return str

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String str = "Add: ${add(a, b)}\nSub: ${sub(a, b)}";
  return str;
}
