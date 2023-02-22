// Create a function getUserID() that returns a future string representing the user’s ID.

// Function prototype : Future<String> getUserId()

// Gets the user data by calling the provided function fetchUserData() which will simulate fetching data from an api.
import '1-main.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final String userData = await fetchUserData();
  final Map<String, dynamic> user = jsonDecode(userData);
  return user['id'];
}