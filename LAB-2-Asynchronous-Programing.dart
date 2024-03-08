import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  var file = File(savePath);
  await file.writeAsBytes(response.bodyBytes);
  print('File downloaded and saved at: $savePath');
}

void main() async {
  String url = 'https://example.com/file.txt';
  String savePath = 'file.txt';

  await downloadFile(url, savePath);
}
