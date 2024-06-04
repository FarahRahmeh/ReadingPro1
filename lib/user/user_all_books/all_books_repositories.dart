import 'package:booktaste/user/user_all_books/all_books_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../utils/constans/api_constans.dart';

class AllBooksRepository extends GetxController {
  static Future<List<AllBooks>?> fechAllBooks() async {
    final response = await http.get(
      Uri.parse('$baseUrl/allBooks'),
    );
    if (response.statusCode == 200) {
      print("success");
      var books = response.body;
      return AllBooksFromJson(books);
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
