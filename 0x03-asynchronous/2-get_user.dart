// Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.

// Create a function getUser() that prints the user’s string representation.

// Function prototype : Future<void> getUser()

// Gets the user data by calling the provided function fetchUserData()

// Must use : try-catch If an error occurs the function should print “error caught: ”
// import '1-main.dart';
import 'dart:convert';
Future<void> getUser() async {
  try {
    final String userData = await fetchUser();
    final Map<String, dynamic> user = jsonDecode(userData);
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}

Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );