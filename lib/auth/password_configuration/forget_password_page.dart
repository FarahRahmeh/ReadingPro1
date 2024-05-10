import 'package:booktaste/auth/password_configuration/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            ///forget password title and subtitle

            ///Text field
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'email', prefixIcon: Icon(Iconsax.direct_right)),
            ),
            SizedBox(
              height: 20,
            ),

            ///submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPasswordPage()),
                child: Text('submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
