// Write a function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring.

// Function prototype : String longestUniqueSubstring(String str);

// If multiple substrings tie in length, return the one which occurs first.

String longestUniqueSubstring(String str) {
    String longest = "";
    String current = "";

  for (int i = 0; i < str.length; ++i) {
    for (int j = i; j < str.length; ++j) {
      current = str.substring(i, j + 1);
      if (current.length > longest.length && isUnique(current)) {
        longest = current;
      }
    }
  }

  return longest;
}

bool isUnique(String str) {
  return str == str.split('').toSet().join('');
}