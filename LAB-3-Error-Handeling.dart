import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print("File content:");
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: ${e.message}");
    } else {
      print("Error: An unexpected error occurred.");
    }
  }
}

void main() {
  String filePath = 'path/to/your/file.txt';

  readFile(filePath);
}
