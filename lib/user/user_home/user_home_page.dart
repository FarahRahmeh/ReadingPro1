import 'package:booktaste/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'user_home_widgets/user_home_appbar.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(
          child: Column(
            children: [
              ///Appbar
              UserHomePageAppbar(),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              ///Searchbar
              Container(
                  //width: DeviceUtils.getScreenWidth,
                  
                  ),

              ///Categories
              ///Cafes
              ///.....
            ],
          ),
        ),
      ),
    );
  }
}
