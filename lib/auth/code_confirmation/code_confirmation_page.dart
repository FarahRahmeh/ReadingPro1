import 'package:booktaste/auth/code_confirmation/code_confirmation_and_verify_controller.dart';
import 'package:booktaste/utils/constans/colors.dart';
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
    List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());
    List<TextEditingController> _controllers =
        List.generate(5, (_) => TextEditingController());

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
              const Padding(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Text(
                  "Please enter the confirmation code",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 23, color: brown, shadows: <Shadow>[
                    Shadow(
                      offset: Offset(5, 5),
                      blurRadius: 13.0,
                      color: brown,
                    )
                  ]),
                ),
              ),
              Container(
                height: 3,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                          controller: _controllers[i],
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
                          focusNode: _focusNodes[i],
                          onChanged: (value) {
                            if (value.length == 1 && i < 4) {
                              FocusScope.of(context)
                                  .requestFocus(_focusNodes[i + 1]);
                            }
                          },

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
                    String code = _controllers.map((c) => c.text).join();
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
    );
  }
}
