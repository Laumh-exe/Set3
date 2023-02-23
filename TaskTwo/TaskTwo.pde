void setup() {
  String word = "København";

  // Call method
  printPartOfWord(word, 1, 4);
}

void printPartOfWord(String word, int index, int Sublength) {

  // Initialize indexEnd as index+sublength so it can be used as argument
  int indexEnd = index + Sublength;

  // Initialize substring as variable
  String subWord = word.substring(index, indexEnd);

  // Print Substring
  print(subWord);
}
