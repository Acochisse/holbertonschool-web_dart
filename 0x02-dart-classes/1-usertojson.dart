// Creating a User class:

// That contain propertie called name
// and a method called showName that return string representation of User “Hello name”
class User {
  String name = '';
  Int age = 0;
  Double height = 0.0;

  String toJson() {
    return '{ "name": "$name", "age": $age, "height": $height }';
  }
}