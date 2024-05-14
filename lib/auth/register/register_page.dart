import 'package:booktaste/auth/register/register_widgets/register_form.dart';
import 'package:booktaste/common/widgets/divider/divider_with_text.dart';
import 'package:booktaste/utils/constans/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../utils/constans/images.dart';
import '../../utils/helpers/helper_functions.dart';
import 'register_widgets/or_register_with.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),

            ///Header: Image
            ///
            ///
            //Image(image:AssetImage(dark? Images.lightLogo:Images.darkLogo)),
            SizedBox(
              width: 250,
              height: 250,
              child: Image(
                image: AssetImage(
                  Images.success,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Sign Up'),
                  SizedBox(
                    height: 10,
                  ),

                  ///Form
                  ///
                  ///
                  RegisterForm(),
                  // SizedBox(
                  //   height: 15,
                  // ),

                  //! commented because it is not working yet
                  // DividerWithText(divderText: 'Or Sign Up with'),
                  // SizedBox(
                  //   height: 15,
                  // ),

                  ///Footer
                  ///
                  ///
                  //RegisterWith(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
