// Create a function usersCount() that prints the number of users.

// Function prototype : Future<void> usersCount() Gets the user count by calling the provided function fetchUsersCount(). which will simulate fetching data from an api.

Future<void> usersCount() {
    return fetchUsersCount();
}

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );
