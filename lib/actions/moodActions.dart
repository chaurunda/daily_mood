import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class MoodActions {
  Future add(int value) async {
    var dt = DateTime.now();
    var newFormat = DateFormat('dd/MM/yyyy');
    String updatedDt = newFormat.format(dt);
    const DBUrl = String.fromEnvironment("URL");
    var url = Uri.parse('$DBUrl/api');
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'date': '$updatedDt', 'value': value}));

    return jsonDecode(response.body);
  }

  Future get() async {
    const DBUrl = String.fromEnvironment("URL");
    var url = Uri.parse('$DBUrl/api');
    final response = await http.get(url);
    return jsonDecode(response.body);
  }
}
