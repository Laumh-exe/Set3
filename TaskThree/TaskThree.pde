int[] arr = {1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10};

void setup() {

  //divisible(10);

  //print(getRandom());
  
  recurse(30);
}

void divisible(int number) {
  // Numbers to check
  int valueLength = 100;

  // Iterate over every number
  for (int i = 0; i < valueLength; i++) {

    // Exception
    if (number == 0) {
      println("UNDIFINED");
      break;
    }
    // Check if divisble and print
    else if (i%number == 0) {
      println(i);
    }
  }
}

int getRandom() {
  // Get random number in array and convert to int (Random returns float)
  return (int) random(arr[0], arr[arr.length-1]);
}

void recurse(int number) {
  // Base case - will exit before running method or printing current number
  if (number <= 0) {
    return;   
  }
  // Print number
  println(number);
  // Run function with number-1
  recurse(number-1); 
}
