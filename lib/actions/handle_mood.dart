import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class HandleMood {
  final Uri _url = Uri.parse(
      '${const String.fromEnvironment('URL').replaceAll("'", "")}/api');

  Future put(int value) async {
    try {
      var dt = DateTime.now();
      var newFormat = DateFormat('dd/MM/yyyy');
      String updatedDt = newFormat.format(dt);
      var response = await Dio().post('$_url/', data: {
        "date": updatedDt,
        "value": value,
      });
      print(response);
    } catch (e) {
      log('Error: $e');
    }
  }

  Future fetch() async {
    try {
      var response = await Dio().get('$_url/');
      print(response);
      return response.data;
    } catch (e) {
      log('Error: $e');
    }
  }
}
