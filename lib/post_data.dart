import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

void postDataToBackend(TextEditingController myController1, TextEditingController myController2) async {
  const url = 'http://10.5.1.224/itpc/fncs.php'; // Replace with your actual API endpoint

  final response = await http.post(Uri.parse(url),
    body: {
      'username': myController1.text,
      'password': myController2.text,
    },
  );

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    final message = responseData['message'];
    print(message);
    // Handle the response data as needed
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
