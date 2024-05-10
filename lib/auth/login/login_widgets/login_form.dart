import 'package:booktaste/auth/login/login_controller.dart';
import 'package:booktaste/data/services/role.manager.dart';
import 'package:booktaste/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../register/register_page.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(children: [
          ///!Email
          TextFormField(
            controller: controller.emailController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email"), //Texts.email
            validator: (value) => Validator.validateEmail(value),
          ),
          const SizedBox(
            height: 7.0,
          ),

          ///!Password
          Obx(
            () => TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
              validator: (value) =>
                  // Validator.validateEmptyText(value, 'Password'),
                  Validator.validatePassword(value),
              obscureText: controller.hidePassword.value,
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          ///!Forget password & remember me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value),
                  ),
                  const Text('remember me'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Forget Password'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  controller.loginWithEmailAndPassword();
                },
                child:
                    // Obx(() {
                    // return controller.isLoading.value
                    //     ? const CircularProgressIndicator(
                    //         color: Colors.white,
                    //       )
                    const Text('Log In')),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(
                () => const RegisterPage(),
              ),
              child: const Text('Register'),
            ),
          )
        ]),
      ),
    );
  }
}
