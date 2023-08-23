import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class ApiService {
  Future<HomeData> fetchHomeData() async {
    final response = await http.post(
      Uri.parse('http://qa.electreps.com/json/home.json'),
      headers: {
        'Content-Type': 'application/json',
        //'Cookie': 'SESS566c75f9daef4c3fb24ad147554380c4=kv5InLoShVbfoL_D02fJZqntt2AfnPgNrpwlWcazCkc; flags=follow_78371',
      },
      body: jsonEncode({
        'uid': '0',
        'nid': '0',
        'lang_code': 'en',
        'tv': 0,
        'city': 'Bangalore',
      }),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return HomeData.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
