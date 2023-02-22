// Write a function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.

// Function prototype : String longestPalindrome(String s);

// A palindrome is a sentence that reads the same backward or forward. If the length of the input string is less than 3 characters it doesn’t count as a palindrome. You can use the function isPalindrome() return none. If the input string doesn’t contain any substrings return none.

String longestPalindrome(String s) {
    String longest = "";
    String current = "";

  for (int i = 0; i < s.length; ++i) {
    for (int j = i; j < s.length; ++j) {
      current = s.substring(i, j + 1);
      if (current.length > longest.length && isPalindrome(current)) {
        longest = current;
      }
      
      }
    }
  }
    if (longest == '') {
        return none;

    return longest;
}

bool isPalindrome(String s) {
    return s == s.split('').reversed.join('') && s.length > 2;

}