fun main() {
  val numbers = intArrayOf(5, 2, 9, 1, 7)
  val sortedNumbers = sortAscending(numbers)
  println("Sorted numbers: ${sortedNumbers.joinToString()}")
}

fun sortAscending(arr: IntArray): IntArray {
  return arr.sorted().toIntArray()
}
