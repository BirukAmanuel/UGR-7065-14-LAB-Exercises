fun main() {
  println("Enter the length of side 1:")
  val side1 = readLine()?.toDoubleOrNull() ?: return
  println("Enter the length of side 2:")
  val side2 = readLine()?.toDoubleOrNull() ?: return
  println("Enter the length of side 3:")
  val side3 = readLine()?.toDoubleOrNull() ?: return

  val triangleType = when {
      side1 == side2 && side2 == side3 -> "Equilateral"
      side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
      else -> "Scalene"
  }

  println("The triangle is $triangleType")
}
