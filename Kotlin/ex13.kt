fun main() {
  println("Enter a number to check if it is a palindrome:")
  val number = readLine()?.toIntOrNull() ?: return

  if (isPalindrome(number)) {
      println("$number is a palindrome.")
  } else {
      println("$number is not a palindrome.")
  }
}

fun isPalindrome(num: Int): Boolean {
  var reversed = 0
  var originalNumber = num

  while (originalNumber > 0) {
      val remainder = originalNumber % 10
      reversed = reversed * 10 + remainder
      originalNumber /= 10
  }

  return num == reversed
}
