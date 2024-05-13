import 'package:booktaste/auth/code_confirmation/code_confirmation_and_verify_controller.dart';
import 'package:booktaste/auth/register/register_page.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../utils/constans/images.dart';

class ConfirmationCodePage extends StatelessWidget {
  const ConfirmationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmationController());

    return Scaffold(
      backgroundColor: offWhite,
      body: SingleChildScrollView(
        child: Form(
          key: controller.codeKey,
          child: Column(
            children: [
              const SizedBox(
                width: 450,
                height: 450,
                child: Image(
                  image: AssetImage(
                    Images.success,
                  ),
                ),
              ),
              Container(
                  child: Center(
                child: TextFormField(
                  controller: controller.codeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Confirmation Code',
                    labelStyle: TextStyle(color: pinkish),
                    hintText: 'Enter the confirmation code',
                    prefixIcon: Icon(Iconsax.code_1),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkBrown)),
                  ),
                  validator: (value) => Validator.validateCode(value),
                ),
              )),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () async {
                      controller.confirmationCode();
                    },
                    child: const Text('Continue')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
