import 'dart:convert';
import 'dart:io';

class Calculator {
  sum(List<double> numbers) {
    double result = 0;

    for (double number in numbers) {
      result += number;
    }

    return result;
  }

  subtract(List<double> numbers) {
    double result = 0;

    for (double number in numbers) {
      result -= number;
    }

    return result;
  }

  multiply(List<double> numbers) {
    double result = 1;

    for (double number in numbers) {
      result *= number;
    }

    return result;
  }

  divide(List<double> numbers) {
    double result = 1;

    for (double number in numbers) {
      result /= number;
    }

    return result;
  }
}

void main(List<String> args) {
  print("Welcome to the Calculator App");
  print("Please enter the operation you would like to perform.");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division\n");

  int operation = 0;
  while (operation < 1 || operation > 4) {
    operation = int.parse(stdin.readLineSync(encoding: utf8)!);
  }

  print(
      "Now please enter the numbers you would like to perform the operation on, separated by spaces.\n");

  List<double> numbers = [];
  String input = stdin.readLineSync(encoding: utf8)!;

  for (String number in input.split(" ")) {
    numbers.add(double.parse(number));
  }

  Calculator calculator = Calculator();
  double result = 0;

  switch (operation) {
    case 1:
      result = calculator.sum(numbers);
      break;
    case 2:
      result = calculator.subtract(numbers);
      break;
    case 3:
      result = calculator.multiply(numbers);
      break;
    case 4:
      result = calculator.divide(numbers);
      break;
    default:
      print("Something went wrong.");
      break;
  }

  print("The result is: $result");
}
