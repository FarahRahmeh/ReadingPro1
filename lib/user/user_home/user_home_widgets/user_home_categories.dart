import 'package:booktaste/common/widgets/shimmers/category_shimmer.dart';
import 'package:booktaste/user/user_sub_category/sub_categories_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/image_with_text/vertical_image_text.dart';
import '../../../utils/constans/images.dart';

class UserHomeCategories extends StatelessWidget {
  const UserHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   

    return Obx(() {
      
      return SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageWithText(
              image: Images.book,
              title: "All",
              onTap: () => Get.to(() => SubCategoriesPage()),
              // textColor: , //~------------same color
            );
          },
        ),
      );
    
    });
  }
}
