import 'package:booktaste/common/widgets/divider/divider_with_text.dart';
import 'package:booktaste/utils/constans/images.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'login_widgets/login_form.dart';
import 'login_widgets/or_login_with.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        ///!Header

        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),

            ///!Image
            //Image(image:AssetImage(dark? Images.lightLogo:Images.darkLogo)),
            SizedBox(
              width: 250,
              height: 250,
              child: Image(
                image: AssetImage(
                  dark ? Images.success : Images.onboarding_1,
                ),
              ),
            ),

            ///!Login Form
            const LoginForm(),
            const SizedBox(
              height: 10,
            ),

            // ///! Divider
            // const DividerWithText(divderText: 'Or Sign In With'),
            // const SizedBox(
            //   height: 15,
            // ),

            /////!Footer
            // OrLoginWith(),
          ],
        ),
      ),
    );
  }
}
