import 'package:booktaste/common/widgets/appbar/appbar.dart';
import 'package:booktaste/common/widgets/appbar/tapbar.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/rounded_container.dart';
import 'package:booktaste/common/widgets/custom_shapes/Containers/search_container.dart';
import 'package:booktaste/common/widgets/layouts/grid_layout.dart';
import 'package:booktaste/common/widgets/notification/notification_counter_icon.dart';
import 'package:booktaste/common/widgets/texts/section_heading.dart';
import 'package:booktaste/user/user_library/user_library_widgets/category_tab.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../common/widgets/category/x_card.dart';
import '../../common/widgets/category/x_show_case.dart';

class UserLibrary extends StatelessWidget {
  const UserLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, //= number of tabs
      child: Scaffold(
        //!Appbar
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
        //!Body
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
                            return XCard();
                          }),
                    ],
                  ),
                ),

                ///! Tabs
                bottom: MyTapBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Science')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
