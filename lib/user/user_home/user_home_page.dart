import 'package:booktaste/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:booktaste/common/widgets/layouts/grid_layout.dart';
import 'package:booktaste/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:booktaste/user/user_all_books/all_books_controller.dart';
import 'package:booktaste/user/user_all_books/all_books_page.dart';
import 'package:booktaste/user/user_home/user_home_controller.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/constans/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/custom_shapes/Containers/search_container.dart';
import '../../common/widgets/texts/section_heading.dart';
import 'user_home_widgets/user_home_appbar.dart';
import 'user_home_widgets/user_home_categories.dart';
import 'user_home_widgets/user_home_slider.dart';

class UserHomePage extends StatelessWidget {
  // final allcategoriescontroller = Get.put(AllCategoriesController());
  UserHomePage({super.key});

  final allbookscontroller = Get.put(AllBooksController());
    final cafescontroller = Get.put(CafesController());


  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
        body: SingleChildScrollView(
      ///!Heading
      child: Column(
        children: [
          PrimaryHeaderContainer(
            height: 380,
            child: Column(
              children: [
                ///!Appbar
                UserHomePageAppbar(),

                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                ///!Searchbar
                ///todo here should be a Row to add the "ADD Book" button
                SearchContainer(
                  text: Texts.homeSearchTitle,
                ),
                SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                ///! ---Categories Section--
                Padding(
                  padding: EdgeInsets.only(left: Sizes.defaultSpace),
                  child: Column(
                    children: [
                      ///---Heading
                      SectionHeading(
                        title: 'Categories', //~------------ same color
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: Sizes.spaceBtwItems,
                      ),

                      ///---Categories
                      UserHomeCategories(), //--->inside here //~------------ same color
                    ],
                  ),
                ),

                ///Cafes
                ///.....
              ],
            ),
          ),

          ///! Body
          Padding(
            padding: const EdgeInsets.only(left: Sizes.defaultSpace),
            child: SectionHeading(
              title: 'Cafes',
              showActionButton: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sizes.md), //Sizes.defultSpace
            child: Column(
              children: [
                ///! Promo Slider
                PromoSlider(
                    banners: [
                      Images.promoBanner,
                      Images.success,
                      Images.promoBanner,
                      Images.onboarding_1,
                      Images.onboarding_1,
                      Images.onboarding_1,
                      Images.onboarding_1,
                    ],
                  ),
                
                const SizedBox(
                  height: Sizes.spaceBtwSections,
                ),

                //! Heading
                SectionHeading(
                  title: 'Popular Books',
                  onPressed: () => null,
                  // Get.to(() => AllProductsPage()),
                ),
                const SizedBox(
                  height: Sizes.spaceBtwItems,
                ),

                ///!Popular products
                Obx(() {
                  if (cafescontroller.isLoading.value) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return MyGridLayout(
                      itemCount: allbookscontroller.booksList.length,
                      itemBuilder: (_, index) => ProductCardVertical(
                        allbooks: allbookscontroller.booksList[index],
                      ),
                    );
                  }
                }),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
