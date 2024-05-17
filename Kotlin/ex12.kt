fun main() {
  println("Enter the lower limit of the range:")
  val lowerLimit = readLine()?.toIntOrNull() ?: return

  println("Enter the upper limit of the range:")
  val upperLimit = readLine()?.toIntOrNull() ?: return

  println("Prime numbers between $lowerLimit and $upperLimit are:")
  var number = lowerLimit

  while (number <= upperLimit) {
      if (isPrime(number)) {
          println(number)
      }
      number++
  }
}

fun isPrime(num: Int): Boolean {
  if (num <= 1) {
      return false
  }
  var divisor = 2
  while (divisor * divisor <= num) {
      if (num % divisor == 0) {
          return false
      }
      divisor++
  }
  return true
}
