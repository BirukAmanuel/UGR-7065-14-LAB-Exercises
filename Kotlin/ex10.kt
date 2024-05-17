fun main() {
  println("Enter a string:")
  val inputString = readLine()

  if (inputString != null) {
      val isUnique = checkUniqueCharacters(inputString)
      if (isUnique) {
          println("The string contains only unique characters.")
      } else {
          println("The string contains duplicate characters.")
      }
  } else {
      println("Invalid input. Please enter a string.")
  }
}

fun checkUniqueCharacters(input: String): Boolean {
  val charSet = HashSet<Char>()
  for (char in input) {
      if (!charSet.add(char)) {
          return false 
      }
  }
  return true 
}
