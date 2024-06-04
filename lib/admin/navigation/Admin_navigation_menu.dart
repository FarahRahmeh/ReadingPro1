import 'package:booktaste/admin/home/admin_home_page.dart';
import 'package:booktaste/admin/library/library_page.dart';
import 'package:booktaste/admin/profile/admin_profile.dart';
import 'package:booktaste/admin/settings/admin_setting_page.dart';
import 'package:booktaste/user/user_library/user_library_page.dart';
import 'package:booktaste/user/user_setting/user_setting_page.dart';
import 'package:booktaste/user/user_wishlist/favourite_page.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../insignts/admin_insignts_page.dart';

class AdminNavigationMenu extends StatelessWidget {
  const AdminNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);

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
            NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.book_square), label: 'Library'),
            NavigationDestination(icon: Icon(Iconsax.layer), label: 'Insignts'),
            NavigationDestination(
                icon: Icon(Iconsax.setting_2), label: 'Settings'),
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
    const AdminHomePage(),
    const AdminLibraryPage(),
    const InsigntsPage(),
    const AdminSettingsPage(),
  ];
}
