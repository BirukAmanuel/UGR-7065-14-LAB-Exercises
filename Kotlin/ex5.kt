fun main() {
  println("Enter the number of hours worked:")
  val hoursWorked = readLine()?.toDoubleOrNull() ?: return

  println("Enter the hourly rate:")
  val hourlyRate = readLine()?.toDoubleOrNull() ?: return

  val regularHours = if (hoursWorked > 40) 40 else hoursWorked
  val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0.0
  val overtimeRate = hourlyRate * 1.5

  val regularPay = regularHours * hourlyRate
  val overtimePay = overtimeHours * overtimeRate
  val totalPay = regularPay + overtimePay

  println("Total salary: $totalPay")
}
