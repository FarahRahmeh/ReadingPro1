import 'package:booktaste/utils/constans/api_constans.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
   static const String _baseUrl = baseUrl;

  final box = GetStorage();
  //Get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handelResponse(response);
  }

  //Post request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: {
          'Accept': 'application/json',
          //'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: json.encode(data),
      );
      return _handelResponse(response);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  //Put request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handelResponse(response);
  }

  //Delete request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handelResponse(response);
  }

  static Map<String, dynamic> _handelResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data : ${response.statusCode}');
    }
  }
}
