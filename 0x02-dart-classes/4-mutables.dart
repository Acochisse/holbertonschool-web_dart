//modify the class to be private
class Password {
    String password = '';

  Password({required this.password});

  isValid() {
    return (password.length >= 8 &&
        password.length <= 16 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[0-9]')));
  }

 @override
  String toString() {
    return 'Your Password is: $password';
  }

// Getter
  String get getPassword => password;

// Setter
  set setPassword(String newPassword) {
    password = newPassword;
  }
}

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());
  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}