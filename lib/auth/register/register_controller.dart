import 'dart:convert';

import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/utils/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/repositories/auth_repository.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  ///Variables
  final hidePassword = true.obs;
  final hidePasswordConfirmation = true.obs;

  final email = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final passwordConfirmation = TextEditingController();
  final _authRepository = Get.put(AuthRepository());
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  Future<void> register() async {
    try {
//       FullSCreenLoader.openLoadingDialog('We are processing your information...', TImages.docerAnimation);

// // Check Internet Connectivity
// final isConnected = await NetworkManager.instance.isConnected();

// if (!isConnected) {
//     FullScreenLoader.stopLoading();
//     return;
// }

      //Form Validation
      if (!registerFormKey.currentState!.validate()) {
        return;
      }

      final response = await _authRepository.register(
          userName.text.trim(),
          email.text.trim(),
          password.text.trim(),
          passwordConfirmation.text.trim());
      print(response.body.toString());

      final userData = json.decode(response.body); // to string
      if (response.statusCode == 200) {
        Get.offAll(() => const LoginPage());
      } else if (response.statusCode == 401)

      //!Wrong Password
      {
        //final message = userData['message'];

        //  Loaders.errorSnackBAr(title: 'login failed: ', message: userData);
      } else if (response.statusCode == 422) {
        // final message = userData['errors']['email'][0].toString();
        //final message = userData['message'];
        Loaders.errorSnackBAr(
            title: 'register failed: ', message: response.body);
      } else {
        Loaders.errorSnackBAr(title: 'Error', message: response.reasonPhrase);
        //throw 'Login failed: ${response.reasonPhrase}';
      }
    } catch (e) {
      Loaders.errorSnackBAr(title: 'On Snap', message: e.toString());
      print(e.toString());
    }
  }
  // } catch (e) {
  //   Loaders.errorSnackBAr(title: 'On Snap', message: e.toString());
  // } finally {
  //   //FullScreenLoaders.stopLoading();
  // }
}
