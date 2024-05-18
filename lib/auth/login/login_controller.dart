import 'dart:convert';
import 'dart:math';

import 'package:booktaste/data/repositories/auth_repository.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/local_storage/storage_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../utils/loaders/loaders.dart';
import '../../data/services/network_manager.dart';
import '../../data/services/role.manager.dart';
import '../../data/services/token_manager.dart';

class LoginController extends GetxController {
  ///Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final localStorage = GetStorage();
  final _authRepository = Get.put(AuthRepository());
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // @override
  // void onInit() {
  //   emailController.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
  //   passwordController.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
  //   super.onInit();
  // }

  Future<void> loginWithEmailAndPassword() async {
    try {
      if (!loginFormKey.currentState!.validate()) {
        return;
      }
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', emailController.text.trim());
        localStorage.write(
            'REMEMBER_ME_PASSWORD', passwordController.text.trim());
      }

      final response = await _authRepository.login(
          emailController.text.trim(), passwordController.text.trim());
      //print(response.body.toString());

      final userData = json.decode(response.body); // to string
      if (response.statusCode == 200) {
        final token = userData['token'];
        final role = userData['user']['role'];
        // final name = userData['user']['name'];

        await saveToken(token);
        // UserCredential(userRole: role);
        await saveRole(role);

        navigateBasedOnRole();

        //print(name.toString());
        print(token + ' ' + role);
      } else if (response.statusCode == 401) {
        ///!Wrong Password
        final message = userData['message'];
        Loaders.errorSnackBAr(title: 'login failed: ', message: message);
      } else if (response.statusCode == 422) {
        // final message = userData['errors']['email'][0].toString();
        final message = userData['message'];
        Loaders.errorSnackBAr(title: 'login failed: ', message: message);
      } else {
        Loaders.errorSnackBAr(title: 'Error', message: response.reasonPhrase);
        //throw 'Login failed: ${response.reasonPhrase}';
      }
    } catch (e) {
      Loaders.errorSnackBAr(title: 'On Snap', message: e.toString());
      print(e.toString());
    }
  }
}
