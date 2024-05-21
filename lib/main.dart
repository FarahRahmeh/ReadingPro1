import 'package:booktaste/admin/admin_home/admin_home_page.dart';
import 'package:booktaste/auth/code_confirmation/code_confirmation_page.dart';
import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/auth/register/register_page.dart';
import 'package:booktaste/auth/verify_email/verify_email_page.dart';
import 'package:booktaste/binding/general_bindings.dart';
import 'package:booktaste/common/features/on_boarding/onboarding_pages.dart';
import 'package:booktaste/user/user_product_details/product_details_page.dart';
import 'package:booktaste/navigation_menu.dart';
import 'package:booktaste/user/user_home/user_home_page.dart';
import 'package:booktaste/user/user_library/user_library.dart';
import 'package:booktaste/user/user_profile/user_profile.dart';
import 'package:booktaste/user/user_setting/user_setting_page.dart';
import 'package:booktaste/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'user/user_wishlist/favourite_page.dart';

Future<void> main() async {
  ///Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///Getx local strorage
  await GetStorage.init();

  ///await splash until other items load
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  ///laod all the material design/ themes/ localizaations/ binding
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      ///Get Bindings
      initialBinding: GeneralBindings(),

      ///!Routes
      getPages: [
        GetPage(name: '/onBoarding', page: () => const OnBoardingPages()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/email_verify', page: () => const VerifyEmailPage()),
        GetPage(
            name: '/confirm_email_code',
            page: () => const ConfirmationCodePage()),
        GetPage(name: '/user_home', page: () => const UserHomePage()),
        GetPage(name: '/admin_home', page: () => const AdminHomePage()),
        GetPage(name: '/navigation', page: () => const NavigationMenu()),
        GetPage(name: '/user_profile', page: () => const UserProfile()),
        GetPage(name: '/user_library', page: () => const UserLibrary()),
        GetPage(name: '/favourite', page: () => const FavouritePage()),
        GetPage(name: '/user_settings', page: () => const UserSettingsPage()),
        GetPage(name: '/details', page: () => const ProductDetailsPage()),
      ],

      ///! initial Route:
      initialRoute: '/details',

      ///Other
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      //home
    );
  }
}
