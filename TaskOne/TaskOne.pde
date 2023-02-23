void setup() {
  // Call method
  printIfPalindrome("Den laks skal ned");
}

void printIfPalindrome(String input) {
  // Declare reverse string
  String reverse;
  
  // Declare positive iteration for char array
  int j = 0;
  
  // Declare char array to store letters in reverse
  
  // Loop backwards through input and copy to char array - i go backwards, j go forwards
  char[] letters = new char[input.length()];
  for (int i = input.length() - 1; i >= 0; i--) {
    letters[j] = input.charAt(i);
    j++;
  }
  
  // Copy array into String
  reverse = String.valueOf(letters);
  
  // Check if palindrome
  if (input.equalsIgnoreCase(reverse)) {
    println(reverse);
  }
}
