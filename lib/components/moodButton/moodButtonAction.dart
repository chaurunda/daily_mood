import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class MoodButtonAction {
  Future add(int value) {
    var dt = DateTime.now();
    var newFormat = DateFormat("dd/MM/yyyy");
    String updatedDt = newFormat.format(dt);
    print(updatedDt);
    var url = Uri.parse("http://6f5811d4fcc6.ngrok.io/api");
    print(url);
    print({'date': updatedDt, 'value': value});
    return http.post(url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({'date': '$updatedDt', 'value': value}));
  }
}
