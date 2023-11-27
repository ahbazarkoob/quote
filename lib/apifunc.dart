// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;

late http.Response apiResponse;

var data;

String url = 'https://type.fit/api/quotes';

getAPIone() async {
  apiResponse = await http.get(Uri.parse(url));
  data = jsonDecode(apiResponse.body);
  print(apiResponse.body);
}
