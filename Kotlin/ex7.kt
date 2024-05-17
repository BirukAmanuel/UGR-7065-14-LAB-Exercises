fun main() {
  println("Enter three different numbers:")
  val num1 = readLine()?.toDoubleOrNull() ?: return
  val num2 = readLine()?.toDoubleOrNull() ?: return
  val num3 = readLine()?.toDoubleOrNull() ?: return

  val largestNumber = if (num1 > num2) {
      if (num1 > num3) {
          num1
      } else {
          num3
      }
  } else {
      if (num2 > num3) {
          num2
      } else {
          num3
      }
  }

  println("The largest number is: $largestNumber")
}
