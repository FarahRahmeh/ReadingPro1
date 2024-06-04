import 'package:booktaste/user/user_home/user_home_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../user/user_home/user_home_model.dart';
import '../../utils/constans/api_constans.dart';

class AllCategoriesRepository extends GetxController {
  static Future<List<AllCategories>?> fechAllCategories() async {
    final response = await http.get(
      Uri.parse('$baseUrl/allShelves'),
    );
    if (response.statusCode == 200) {
      print("success");
      var categories = response.body;
      return AllCategoriesFromJson(categories);
    } else {
      print(response.statusCode);
      return null;
    }
  }
}


class CafesRepository extends GetxController {
  static Future<List<Cafes>?> fechAllCafes() async {
    final response = await http.get(
      Uri.parse('$baseUrl/allCafe'),
    );
    if (response.statusCode == 200) {
      print("success");
      var cafes = response.body;
      return CafesFromJson(cafes);
    } else {
      print(response.statusCode);
      return null;
    }
  }
}


