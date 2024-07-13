import 'package:booktaste/auth/code_confirmation/code_confirmation_and_verify_controller.dart';
import 'package:booktaste/utils/constans/colors.dart';
import 'package:booktaste/utils/constans/sizes.dart';
import 'package:booktaste/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/constans/images.dart';

class ConfirmationCodePage extends StatelessWidget {
  const ConfirmationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmationController());
    List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());
    List<TextEditingController> controllers =
        List.generate(5, (_) => TextEditingController());

    return Scaffold(
      backgroundColor: offWhite,
      body: SingleChildScrollView(
        child: Form(
          key: controller.codeKey,
          child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
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
                Text(
                  "Enter confirmation code",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Divider(
                  thickness: 1,
                  color: pinkish,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(5, (i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 40,
                          // height: 50,
                          child: TextFormField(
                              maxLength: 1,
                              controller: controllers[i],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(1),
                              ],
                              decoration: const InputDecoration(
                                labelStyle: TextStyle(color: pinkish),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: darkBrown),
                                ),
                              ),
                              focusNode: focusNodes[i],
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  if (i < 4) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[i + 1]);
                                  }
                                } else {
                                  if (i > 0) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[i - 1]);
                                  }
                                }
                              }

                              // validator: (value) => Validator.validateCode(value),
                              ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      String code = controllers.map((c) => c.text).join();
                      controller.codeController.text = code;
                      await controller.confirmationCode();
                    },
                    child: const Text('Continue'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
