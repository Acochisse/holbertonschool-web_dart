// Write a function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring.

// Function prototype : String longestUniqueSubstring(String str);

// If multiple substrings tie in length, return the one which occurs first.

String longestUniqueSubstring(String str) {
    String longest = "";
    String current = "";

    for (int i = 0; i < str.length(); i++) {
        String c = str.substring(i, i + 1);
        if (current.contains(c)) {
            if (current.length() > longest.length()) {
                longest = current;
            }
            current = c;
        } else {
            current += c;
        }
    }
    return longest;
}
