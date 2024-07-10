import "dart:io";
import "dart:math";

// Create a list of names and print all names using list.
void Q1() {
  List name = ["aamir", "Khubaib", "hamza", "Qari sahab"];
  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }
}

// Create an empty list of type string called days.
// Use the add method to add names of 7 days and print all days.
void Q2() {
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);

  for (var i = 0; i < days.length; i++) {
    print(days[i]);
  }
}

// Create a list of Days and remove one by one from the end of list.
void Q3() {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  days.removeLast();
  print(days);
}

void Q4() {
  // Create a list of numbers & write a program to get the smallest & greatest number from a list
  List<int> program = [1, 45, 654, 643, 5, 6, 6];
  program.sort();
  print(
      "Your smallest number is ${program.first} and Your greatest number is ${program.last}");
}

// Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void Q5() {
  var name = {
    "Muhammad Khubaib": "03116554647",
    "Amir jamal": "04563",
    "Muhammad yousuf": "09843",
    "Muhammad Kamal": "0311",
    "Maha": "0311",
  };

  var keys = name.keys.where((key) => key.length == 4);
  print(keys);
}

// Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency

void Q6() {
  var world = {
    "countries": {
      "pakistan": {
        "capitalCity": "Islamabad",
        "currency": "Rupee",
        "language": "urdu"
      },
      "India": {
        "capitalCity": "New Dehli",
        "currency": "Indian Rupee",
        "language": "Hindi"
      },
      "Bangladesh": {
        "capitalCity": "Dhaka",
        "currency": "Taka",
        "language": "Bangali"
      }
    }
  };
  var console = world["countries"]?["India"];
  print(console);
}

// Map<String, double> expenses = {
// 'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0,
// };
// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses

void Q7() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses["fri"] = 5000.0;
  } else {
    expenses["fri"] = 5000.0;
  }

  print(expenses);
}

//   remove all false values from below list by using removeWhere or retainWhere property.
// List<Map<String, bool>> usersEligibility = [ {'name': 'John', 'eligible': true}, {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true}, {'name': 'Tom', 'eligible': false}, ];

void Q8() {
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.removeWhere((value) => value['eligible'] == false);

  print(usersEligibility);
}

//  Given a list of integers, write a dart code that returns the maximum value from the list.

void Q9() {
  List<int> total = [
    2,
    4,
    67,
    896,
    8,
    90,
  ];

  total.sort();
  print(total.last);
}

// Write a Dart code that takes in a list of strings and removes any
// duplicate elements, returning a new list without duplicates.
// The order of elements in the new list should be the same as in the
// original list.

void Q10() {
  List<String> duplicate = [
    "khubaib",
    "khubaib",
    "khubaib",
    "khubaib",
    "khubaib",
    "ahmed",
    "89",
    "89",
    "muhammad"
  ];
  var rd = duplicate.toSet();
  print(rd);
}

// Write a Dart code that takes in a list and an integer n as
// parameters. The program should print a new list containing the
// first n elements from the original list.

void Q11() {
  List<int> total = [2, 4, 67, 896, 8, 90, 67, 89];
  int n = 5;

  List<int> copy = total.sublist(0, n);
  print(copy);
}

// Write a Dart code that takes in a list of strings and prints a new
// list with the elements in reverse order. The original list should
// remain unchanged.

void Q12() {
  List<String> string = [
    "khubaib",
    "khubaib",
    "khubaib",
    "khubaib",
    "khubaib",
    "ahmed",
    "89",
    "89",
    "muhammad"
  ];

  List<String> copy = string.sublist(0);
  var reverse = copy.reversed;
  print(reverse);
}

// Implement a code that takes in a list of integers and returns a new
// list containing only the unique elements from the original list.
// The order of elements in the new list should be the same as in the
// original list.

void Q13() {
  List<int> total = [
    2,
    4,
    67,
    896,
    8,
    90,
    67,
    89,
    2,
    4,
    67,
    896,
    8,
    90,
    67,
    89
  ];

  List<int> unique = total.toSet().toList();
  print(unique);
}

//  Write a Dart code that takes in a list of integers and prints a new list
//  with the elements sorted in ascending order. The original list should remain
//  unchanged.

void Q14() {
  List<int> number = [2, 4, 67, 896, 8, 90, 67, 89];
  number.sort();
  print(number);
}

// Implement a Dart code that uses the where() method to filter out negative
// numbers from a list of integers. The program should take in the original list
// as a parameter and print a new list containing only the positive numbers.

void Q15() {
  List<int> numbers = [5, -3, 8, -1, 2, -9, 4, 7, -6];
  List<int> positive = numbers.where((numbers) => numbers >= 0).toList();
  print(positive);
}

// Implement a Dart code that uses the where() method to filter out odd numbers
// from a list of integers. The program should take in the original list as a
// parameter and print a new list containing only the even numbers.

void Q16() {
  List<int> numbers = [5, 3, 8, 1, 2, 9, 4, 7, 6];
  List<int> even = numbers.where((numbers) => numbers % 2 == 0).toList();
  print(even);
}

// Given a list of integers, write a Dart code that uses the map() method to
// create a new list with each value squared. The program should take in the
// original list as a parameter and print the new list.

void Q17() {
  List<int> numbers = [5, 3, 8, 1, 2, 9, 4, 7, 6];
  List<int> square = numbers.map((numbers) => numbers * numbers).toList();
  print(square);
}

// Create a map named "person" with the following key-value pairs: "name" as
// "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the
// person is both a student and over 18 years old. Print "Eligible" if both
// conditions are true, otherwise print "Not eligible".

void Q18() {
  Map<String, dynamic> std = {
    "name": "Muhammad Khubaib",
    "age": 25,
    "isStudent": true
  };

  if (std["age"] >= 18 && std["isStudent"] == true) {
    print("Student ${std["name"]} is eligible");
  } else {
    print("Student ${std["name"]} is Not eligible");
  }
}

// Given a map representing a product with keys "name", "price", and "quantity",
// write Dart code to check if the product is in stock. If the quantity is
// greater than 0, print "In stock", otherwise print "Out of stock".

void Q19() {
  Map<String, dynamic> product = {
    "name": "Bread",
    "Price": 30,
    "Quantity": 30,
  };

  if (product["Quantity"] > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }
}

// Create a map named "car" with the following key-value pairs: "brand" as
// "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if
// the car is a sedan and red in color. Print "Match" if both conditions are
// true, otherwise print "No match".

void Q20() {
  Map<String, dynamic> car = {
    "Brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };

  if (car["color"] == "Red" && car["isSedan"] == true) {
    print("Car ${car["Brand"]} is eligible");
  } else {
    print("Car ${car["Brand"]} is not eligible");
  }
}

// Given a map representing a user with keys "name", "isAdmin", and "isActive",
// write Dart code to check if the user is an active admin. If the user is both
// an admin and active, print "Active admin", otherwise print "Not an active
// admin".

void Q21() {
  Map<String, dynamic> admin = {
    "name": "Muhammad Khubaib",
    "isAdmin": true,
    "isActive": true,
  };

  if (admin["isAdmin"] == true && admin["isActive"] == true) {
    print("${admin["name"]} is Active admin");
  } else {
    print("${admin["name"]} is not an Active admin");
  }
}

// Given a map representing a shopping cart with keys as product names and
// values as quantities, write Dart code to check if a product named "Apple"
// exists in the cart. Print "Product found" if it exists, otherwise print
// "Product not found".

void Q22() {
  Map<String, dynamic> Cart = {
    "Product": "Dove",
    "Quanttities": true,
  };

  if (Cart["product"] == "apple") {
    print("product found");
  } else {
    print("product not found");
  }
}

// Consider the code:
// List nameList = [Bilal, Bilal, Bilal, Huzaifa, Huzaifa, Huzaifa];
// What can to be done in order to not repeat Bilal and Huzaifa multiple times?

void Q23() {
  List<String> names = [
    "Bilal",
    "Bilal",
    "Bilal",
    "Huzaifa",
    "Huzaifa",
    "Huzaifa"
  ];

  var unique = names.toSet().toList();

  print(unique);
}

// Let’s say you are given a list saved in a variable:
// Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a code that takes this list and makes a new list that has only the even elements of this list in it.

void Q24() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b = a.where((a) => a % 2 == 0).toList();
  print(b);
}

// Write a program to print multiplication table of 7 length 15 using loop.

void Q25() {
  for (var i = 1; i <= 15; i++) {
    var a = 7 * i;
    print("7 x $i = $a");
  }
}

// Write a program to print items of the following array using for loop:
// fruits = [“apple”, “banana”, “mango”, “orange”, “strawberry”].

void Q26() {
  List<String> fruits = ['apple', 'banana', "mango", 'orange', 'strawberry'];
  for (var i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }
}

//  Write a program to print multiples of 5 ranging 1 to 100.

void Q27() {
  for (var i = 1; i <= 100; i++) {
    if (i % 5 == 0) {
      print(i);
    }
  }
}

// The Temperature Converter: It’s hot out! Let’s make a converter based on the
// steps here. a. Store a Celsius temperature into a variable.
// b. Convert it to Fahrenheit & output “NNoC is NNoF”.
// c. Now store a Fahrenheit temperature into a variable.
// d. Convert it to Celsius & output “NNoF is NNoC”.
// Note: NN = any number

void Q28() {
  var C = double.parse(stdin.readLineSync()!);

  var F = (C * 9 / 5) + 32;

  print("$C is $F");

  var Fe = double.parse(stdin.readLineSync()!);
  var Ce = (F - 32) * 5 / 9;

  print("$Fe is $Ce");
}

// Write a program to create a calculator for +, -, *, / & % using if
// statements. Take the following input:
// a. First number Second number
// b. Operation (+, -, *, /, %)
// Compute & show the calculated result to user.

void Q29() {
  stdout.write("Enter first number: ");
  num a = int.parse(stdin.readLineSync()!);
  stdout.write("Select sign which you have done: ");
  String sign = stdin.readLineSync()!;
  stdout.write("Enter 2nd number: ");
  num b = int.parse(stdin.readLineSync()!);

  if (sign == "+") {
    print(a + b);
  } else if (sign == "-") {
    print(a - b);
  } else if (sign == "*") {
    print(a * b);
  } else if (sign == "/") {
    print(a / b);
  } else if (sign == "%") {
    print(a % b);
  } else {
    print("plz select method for which you have calculate");
  }
}

// Write a program that takes a character (I. e. string of length 1) and
// returns true if it is a vowel, false otherwise.

void Q30() {
  String alpha = stdin.readLineSync()!;
  alpha = alpha.toLowerCase();
  if (alpha == "a" ||
      alpha == "e" ||
      alpha == "i" ||
      alpha == "o" ||
      alpha == "u") {
    print("true");
  } else {
    print("false");
  }
}

//  Write a program to reverse a string. For example, if my string is
// "natsikaP nawaJ" then my result will be "Jawan Pakistan".

void Q31() {
  String reverse = stdin.readLineSync()!;
  String reverse1 = reverse.split("").reversed.join("");
  print(reverse1);
}

// List numList = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
// 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39,
// 40, 41, 42, 45, 46, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62,
// 63, 64, 66, 67, 68, 69, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83,
// 84, 85, 86, 87, 88, 89, 90, 92, 93, 94, 95, 96, 98, 99, 100];
// Find the missing number in array of 1 to 100?

void Q32() {
  List numList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    29,
    30,
    31,
    32,
    33,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    45,
    46,
    48,
    49,
    50,
    51,
    53,
    54,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    66,
    67,
    68,
    69,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    81,
    82,
    83,
    84,
    85,
    86,
    87,
    88,
    89,
    90,
    92,
    93,
    94,
    95,
    96,
    98,
    99,
    100
  ];

  for (var i = 0; i <= 100; i++) {
    if (!numList.contains(i)) {
      print(i);
    }
  }
}

// List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];
// Find the largest and smallest number in an unsorted integer array?

void Q33() {
  List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];
  int max = unsortedList.reduce((a, b) => a > b ? a : b);
  int min = unsortedList.reduce((a, b) => a < b ? a : b);
  print("your smallest number is $min and your largest number is $max");

}


void main() {
  Q1();
  Q2();
  Q3();
  Q4();
  Q5();
  Q6();
  Q7();
  Q8();
  Q9();
  Q10();
  Q11();
  Q12();
  Q13();
  Q14();
  Q15();
  Q16();
  Q17();
  Q18();
  Q19();
  Q20();
  Q21();
  Q22();
  Q23();
  Q24();
  Q25();
  Q26();
  Q27();
  Q28();
  Q29();
  Q30();
  Q31();
  Q32();
  Q33();
}
