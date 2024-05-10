import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constans/images.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginPage()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image(
                image: AssetImage(Images.verifyEmail),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text('Verify your Email'),
              const SizedBox(
                height: 22.0,
              ),
              SizedBox(
                child:
                    ElevatedButton(onPressed: () {}, child: Text('Continue')),
                width: double.infinity,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: OutlinedButton(
                    onPressed: () {}, child: Text('Resend Email')),
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
