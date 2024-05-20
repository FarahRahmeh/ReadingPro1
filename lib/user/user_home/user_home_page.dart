import 'package:booktaste/common/widgets/custom_shapes/Containers/circular_container.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:booktaste/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/constans/texts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_shapes/Containers/search_container.dart';
import '../../common/widgets/images/rounded_image.dart';
import '../../common/widgets/texts/section_heading.dart';
import 'user_home_widgets/user_home_appbar.dart';
import 'user_home_widgets/user_home_categories.dart';
import 'user_home_widgets/user_home_slider.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      ///!Heading
      child: Column(
        children: [
          PrimaryHeaderContainer(
            height: 400,
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
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: PromoSlider(banners: [
              Images.promoBanner,
              Images.success,
              Images.promoBanner,
              Images.onboarding_1,
            ]),
          ),
          SizedBox(
            height: Sizes.spaceBtwSections,
          ),
          ProductCardVertical(),
        ],
      ),
    ));
  }
}
