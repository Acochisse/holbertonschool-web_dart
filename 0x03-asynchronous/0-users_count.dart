// Create a function usersCount() that prints the number of users.

// Function prototype : Future<void> usersCount() Gets the user count by calling the provided function fetchUsersCount(). which will simulate fetching data from an api.
import '0-main.dart';
Future<void> usersCount() async {
  final int usersCount = await fetchUsersCount();
  print('$usersCount');
}