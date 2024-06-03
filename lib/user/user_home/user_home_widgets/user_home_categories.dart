import 'package:booktaste/user/user_home/user_home_model.dart';
import 'package:booktaste/user/user_sub_category/sub_categories_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/image_with_text/vertical_image_text.dart';
import '../../../utils/constans/images.dart';
import '../user_home_controller.dart';

class UserHomeCategories extends StatelessWidget {
  final allcategoriescontroller =
      Get.put(AllCategoriesController(), permanent: true);
  UserHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Obx(() {
        if (allcategoriescontroller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: allcategoriescontroller.allcategoriesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return VerticalImageWithText(
                categories: allcategoriescontroller.allcategoriesList[index],
                image: Images.book,
                // title: "all" ,
                onTap: () => Get.to(() => SubCategoriesPage()),
                // textColor: , //~------------same color
              );
            },
          );
        }
      }),
    );
  }
}
