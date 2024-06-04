import 'package:booktaste/auth/code_confirmation/code_confirmation_page.dart';
import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../utils/constans/colors.dart';
import '../../utils/constans/images.dart';
import '../../utils/validators/validation.dart';
import '../code_confirmation/code_confirmation_and_verify_controller.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmationController());
    

    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     IconButton(
      //         onPressed: () => Get.offAll(() => const LoginPage()),
      //         icon: Icon(CupertinoIcons.clear))
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image(
                image: const AssetImage(Images.verifyEmail),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text('Verify your Email'),
              const SizedBox(
                height: 7.0,
              ),
              Form(
                key: controller.verifyKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: "Email",
                        // border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: darkBrown)),
                      ), //Texts.email
                      validator: (value) => Validator.validateEmail(value),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () async {
                            controller.verifyEmail();
                          },
                          child: Text('Continue')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            controller.verifyEmail();
                          }, child: const Text('Resend Email')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
