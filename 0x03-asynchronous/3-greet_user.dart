// Create a function greetUser() that returns a string as follows “hello ”.

// Function prototype : Future<String> greetUser()

// Gets the user data by calling the provided function fetchUserData()

// Must use try-catch If an error occurs the function should return “error caught: ”

// Create a function loginUser()

// Function prototype : Future<String> loginUser()

// Should call the provided function checkCredentials() which returns a future bool.

// If checkCredentials() returns true loginUser() should call greetUser() and return it’s value
// If checkCredentials() returns false loginUser() should return “Wrong credentials”
// Must use try-catch If an error occurs the function should return “error caught: ”
import 'dart:convert';
Future<String> greetUser() async {
  final String userData = await fetchUserData();
  final Map<String, dynamic> user = jsonDecode(userData);
  return '3.14 Battery street\n';
}

Future<String> loginUser() async {
  try {
    final bool credentials = await checkCredentials();
    if (credentials) {
      return greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );