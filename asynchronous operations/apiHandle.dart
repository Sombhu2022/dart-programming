// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<void> fetchData() async {
//   try {
//     var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       print("Title: ${data['title']}");
//     } else {
//       print("Error: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Exception: $e");
//   }
// }

// void main() {
//   fetchData();
// }
