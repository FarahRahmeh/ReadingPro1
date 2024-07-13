import 'package:booktaste/user/user_home/user_home_page.dart';
import 'package:booktaste/user/user_library/user_library_page.dart';
import 'package:booktaste/user/user_setting/user_setting_page.dart';
import 'package:booktaste/user/user_wishlist/favourite_page.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UserNavigationMenu extends StatelessWidget {
  const UserNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = HelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          indicatorColor: beige2,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          // backgroundColor: darkMode ? TColors.black : Colors.white,
          // indicatorColor: darkMode
          //     ? TColors.white.withOpacity(0.1)
          //     : TColors.black.withOpacity(0.1),
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Library'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
     UserHomePage(),
    const UserLibrary(),
    const FavouritePage(),
    // const UserProfile(),
    const UserSettingsPage(),
  ];
}
//comment to test