// Creating a User class:

// That contain propertie called name
// and a method called showName that return string representation of User “Hello name”
class User {
  String name = '';
  int age = 0;
  double height = 0.0;
  var id = 0;

  User({required this.name, required this.age, required this.height});

 Map toJson() {
    return {
      'id': id, 'name': name, 'age': age, 'height': height,
    };
  }

  static User fromJson(Map json) {
    return User(
      name: json['name'],
      age: json['age'],
      height: json['height'],
    );
  }

  toString() {
    return 'User: {id: $id , name: $name, age: $age, height: $height}';
  }

  
}

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}