import 'package:booktaste/admin/admin_home/admin_home_page.dart';
import 'package:booktaste/auth/code_confirmation/code_confirmation_page.dart';
import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/auth/register/register_page.dart';
import 'package:booktaste/auth/verify_email/verify_email_page.dart';
import 'package:booktaste/common/features/on_boarding/onboarding_pages.dart';
import 'package:booktaste/user/navigation/user_navigation_menu.dart';
import 'package:booktaste/user/user_home/user_home_page.dart';
import 'package:booktaste/user/user_library/user_library_page.dart';
import 'package:booktaste/user/user_product_details/product_details_page.dart';
import 'package:booktaste/user/user_profile/user_profile.dart';
import 'package:booktaste/user/user_setting/user_setting_page.dart';
import 'package:booktaste/user/user_wishlist/favourite_page.dart';
import 'package:get/get.dart';

import '../user_admin_routes/user_routes.dart';

class AppRoutes {
  static final pages = [
    //! Shared Routes
    GetPage(
        name: UserAdminRoues.onBoarding, page: () => const OnBoardingPages()),
    GetPage(name: UserAdminRoues.login, page: () => const LoginPage()),
    GetPage(name: UserAdminRoues.register, page: () => const RegisterPage()),
    GetPage(
        name: UserAdminRoues.emailVerify, page: () => const VerifyEmailPage()),
    GetPage(
        name: UserAdminRoues.confirmEmailCode,
        page: () => const ConfirmationCodePage()),
    //! User Routes
    GetPage(name: UserRoutes.home, page: () => const UserHomePage()),
    GetPage(
        name: UserRoutes.navigation, page: () => const UserNavigationMenu()),
    GetPage(name: UserRoutes.profile, page: () => const UserProfile()),
    GetPage(name: UserRoutes.library, page: () => const UserLibrary()),
    GetPage(name: UserRoutes.favourite, page: () => const FavouritePage()),
    GetPage(name: UserRoutes.settings, page: () => const UserSettingsPage()),
    GetPage(name: UserRoutes.details, page: () => const ProductDetailsPage()),

    //! Admin Routes
    GetPage(name: AdminRoutes.home, page: () => const AdminHomePage()),
  ];
}
