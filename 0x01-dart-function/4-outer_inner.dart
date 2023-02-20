// Write two functions the first function outer() take two argument name, id and the output should be inside the function inner().

// Function prototype : void outer(String name, String id)
// Function prototype : String inner()
// Output should be if the name = Tom Hanks and id = 006 : Hello Agent H.Tom your id is 006
// Followed by a new line

void outer(String name, String id) {
  String inner() {
    String str = "Hello Agent ${name.split(' ')[1][0]}.${name.split(' ')[0]} your id is ${id}";
    return str;
  }
  print(inner());
}

void inner() {
  print("Hello Agent H.Tom your id is 006");
}
