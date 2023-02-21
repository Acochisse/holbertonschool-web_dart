// Write a function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring.

// Function prototype : String longestUniqueSubstring(String str);

// If multiple substrings tie in length, return the one which occurs first.

String longestUniqueSubstring(String str) {
    int n = str.length();
    int res = 0; // result
    int[] lastIndex = new int[256];
    // Initialize all occurrence as -1
    Arrays.fill(lastIndex, -1);
    // Initialize start of current window
    int i = 0;
    // Move end of current window
    for (int j = 0; j < n; j++) {
        // Find the last index of str[j]
        // Update i (starting index of current window)
        // as maximum of current value of i and last
        // index plus 1
        i = Math.max(i, lastIndex[str.charAt(j)] + 1);
        // Update result if we get a larger window
        res = Math.max(res, j - i + 1);
        // Update last index of j.
        lastIndex[str.charAt(j)] = j;
    }
    return res;
}