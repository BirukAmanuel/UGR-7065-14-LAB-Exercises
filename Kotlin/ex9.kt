fun main() {
  println("Enter a non-negative integer to calculate its factorial:")
  val number = readLine()?.toIntOrNull()
  if (number != null && number >= 0) {
      val factorial = calculateFactorial(number)
      println("Factorial of $number is $factorial")
  } else {
      println("Invalid input. Please enter a non-negative integer.")
  }
}

fun calculateFactorial(n: Int): Long {
  return if (n == 0 || n == 1) {
      1
  } else {
      n.toLong() * calculateFactorial(n - 1)
  }
}
