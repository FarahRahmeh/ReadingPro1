import 'package:booktaste/auth/password_configuration/forget_password_page.dart';
import 'package:booktaste/auth/success_screen/success_scree.dart';
import 'package:booktaste/auth/verify_email/verify_email_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<String?> getRole() async {
  final box = GetStorage();
  return box.read('ROLE');
}

Future<void> saveRole(String role) async {
  final box = GetStorage();
  await box.write('ROLE', role);
}

void navigateBasedOnRole() async {
  final role = await getRole(); // Retrieve the role
  if (role == 'master_admin' || role == 'admin') {
    Get.offAll(() => const ForgetPasswordPage());

    //todo Change the route name
  } else if (role == 'user') {
    Get.offAll(() => const VerifyEmailPage());

    //todo Change the route name
  }
}
