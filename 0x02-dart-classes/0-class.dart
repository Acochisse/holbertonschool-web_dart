// Creating a User class:

// That contain propertie called name
// and a method called showName that return string representation of User “Hello name”
class User {
public:
  String name;
  String showName() {
    return "Hello " + name;
  }
}