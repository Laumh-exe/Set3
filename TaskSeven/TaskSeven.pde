void setup() {
  ArrayList<Integer> numbers = new ArrayList();
  ArrayList<String> strings = new ArrayList();
  ArrayList<Boolean> bools = new ArrayList();

  // Initialize number array to sort
  int[] numbersArr = {1, 4, 0, 2};
  // tmp = {2, 1, 10, 10}
  // Add strings and call method
  strings.add("John");
  strings.add("Simon");
  strings.add("Ben");
  printStrings(strings);

  // Add Integers and call method
  numbers.add(5);
  numbers.add(10);
  numbers.add(0, 40);
  println("\nSum is: " + (int) sum(numbers));

  // Print out avarage with only two decimal
  System.out.printf("\nAverage: %.2f", average(numbers));
  // Print out sorted numbers
  numbersArr = sortNumbers(numbersArr);
  println("\n");
  for (int i : numbersArr) {
    print(i + "  ");
  }
}

// Print each string in ArrayList
void printStrings(ArrayList<String> strings) {
  strings.forEach((s) -> println("Name is: ", s));
}

// Calculate Sum
float sum(ArrayList<Integer> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.size(); i++) {
    sum += numbers.get(i);
  }
  return sum;
}

// Calculate avarage
float average(ArrayList<Integer> numbers) {
  return sum(numbers)/(numbers.size());
}

// Sort numbers array
int[] sortNumbers(int[] numbers) {
  int tmp;
  for (int i = 0; i < numbers.length; i++) {
    for (int j = 0; j < numbers.length; j++) {
      tmp = 0;
      if (numbers[i] > numbers[j]) {
        tmp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = tmp;
      }
    }
  }

  return numbers;
}
