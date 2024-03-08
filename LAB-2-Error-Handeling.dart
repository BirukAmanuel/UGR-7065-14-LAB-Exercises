double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is NoSuchMethodError) {
      // This error occurs when trying to divide by zero
      print("Error: Division by zero is not allowed.");
    } else {
      // Handle other errors
      print("Error: An unexpected error occurred.");
    }
    return double.nan; // Return NaN (Not a Number) to indicate error
  }
}

void main() {
  // Test cases
  print("Result: ${divideNumbers(10, 2)}"); // Valid division
  print("Result: ${divideNumbers(8, 0)}");  // Division by zero
}
