import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/circular_container.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/search_container.dart';
import 'package:booktaste/common/widgets/images/circular_image.dart';
import 'package:booktaste/common/widgets/layouts/grid_layout.dart';
import 'package:booktaste/common/widgets/notification/notification_counter_icon.dart';
import 'package:booktaste/common/widgets/texts/section_heading.dart';
import 'package:booktaste/common/widgets/texts/x_title_text.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/enums.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_shapes/Containers/rounded_container.dart';

class UserLibrary extends StatelessWidget {
  const UserLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Library',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          NotificationCounterIcon(
            onPressed: () {},
            iconColor: lightBrown,
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: HelperFunctions.isDarkMode(context)
                    ? MyColors.black
                    : MyColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(Sizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //!    --Search bar
                      SizedBox(height: Sizes.spaceBtwItems),
                      SearchContainer(
                        text: 'Search in Library',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: Sizes.spaceBtwSections),

                      //! ---Featured brands
                      SectionHeading(
                        title: 'Featured ~~~',
                        onPressed: () {},
                      ),
                      const SizedBox(height: Sizes.spaceBtwItems / 1.5),

                      MyGridView(
                          mainAxisExtent: 80,
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: RoundedContainer(
                                margin: const EdgeInsets.all(
                                    2), //* ---Increases this value might make a pixels overflow
                                padding: const EdgeInsets.all(Sizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    //--Icon
                                    Flexible(
                                      child: CircularImage(
                                        image: Images.onboarding_1,
                                        isNetworkImg: false,
                                        backgroundColor: Colors.transparent,
                                        // overlayColor: HelperFunctions.isDarkMode(context)
                                        //     ? MyColors.black
                                        //     : MyColors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                        height: Sizes.spaceBtwItems / 2),

                                    //--Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          XTitleText(
                                            title: 'Book',
                                            xTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            'blah blah blah........',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
