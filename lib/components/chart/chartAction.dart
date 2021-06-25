import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> getMoods() async {
  const DBUrl = String.fromEnvironment("URL");
  var url = Uri.parse('$DBUrl/api');

  print(url);
  final response = await http.get(url);

  if (response.statusCode == 200) {
    List<dynamic> moods = jsonDecode(response.body);
    return moods;
  } else {
    throw Exception('Failed to load post');
  }
}
