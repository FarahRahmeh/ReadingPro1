import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/images/rounded_image.dart';
import 'package:booktaste/common/widgets/texts/section_heading.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/products/product_card/product_card_horizontal.dart';

class SubCategoriesPage extends StatelessWidget {
  const SubCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Fantasy'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              RoundedImage(
                imageUrl: Images.promoBanner,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              ///Sub-Categries
              Column(
                children: [
                  SectionHeading(
                    title: 'Fantasy top books',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: Sizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => SizedBox(
                              width: Sizes.spaceBtwItems,
                            ),
                        itemBuilder: (context, index) =>
                            ProductCardHorizontal()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
