import 'package:get/get.dart';
import 'package:booktaste/user/user_home/user_home_model.dart';
import 'package:get/get.dart';

import '../../data/repositories/user_home_repository.dart';

class UserHomeController extends GetxController {
  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}

class AllCategoriesController extends GetxController {
  var isLoading = true.obs;
  var allcategoriesList = <AllCategories>[].obs;

  @override
  void onInit() {
    fetchAllCategories();
    super.onInit();
  }

  void fetchAllCategories() async {
    try {
      isLoading(true);
      var allcategories = await AllCategoriesRepository.fechAllCategories();
      if (allcategories != null) {
        print("not null");
        allcategoriesList.value = allcategories;
      }
    } finally {
      isLoading(false);
    }
  }
}


class CafesController extends GetxController {
  var isLoading = true.obs;
  var cafesList = <Cafes>[].obs;

  @override
  void onInit() {
    fetchAllCafes();
    super.onInit();
  }

  void fetchAllCafes() async {
    try {
      isLoading(true);
      var allcafes = await CafesRepository.fechAllCafes();
      if (allcafes != null) {
        print("not null");
        cafesList.value = allcafes;
      }
    } finally {
      isLoading(false);
    }
  }
}
