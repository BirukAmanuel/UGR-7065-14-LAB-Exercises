class Triangle(val side1: Double, val side2: Double, val side3: Double) {
  fun isEquilateral(): Boolean {
      return side1 == side2 && side2 == side3
  }

  fun isIsosceles(): Boolean {
      return side1 == side2 || side2 == side3 || side1 == side3
  }

  fun isScalene(): Boolean {
      return !isEquilateral() && !isIsosceles()
  }
}

fun main() {
  val triangle1 = Triangle(5.0, 5.0, 5.0) // Equilateral
  val triangle2 = Triangle(3.0, 4.0, 4.0) // Isosceles
  val triangle3 = Triangle(4.0, 5.0, 6.0) // Scalene

  println("Triangle 1 is Equilateral: ${triangle1.isEquilateral()}")
  println("Triangle 2 is Isosceles: ${triangle2.isIsosceles()}")
  println("Triangle 3 is Scalene: ${triangle3.isScalene()}")
}
