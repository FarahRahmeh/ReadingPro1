import 'dart:convert';
import 'dart:ffi';
import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/common/features/on_boarding/onboarding_pages.dart';

import 'package:booktaste/utils/http/http_client.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../utils/constans/api_constans.dart';

class AuthRepository extends GetxController {
  ///static AuthRepository get instance => Get.find();

  ///Variables
  final deviceStorage = GetStorage();

  // This function will be called when the app launches
  // @override
  // void onReady() {
  //   super.onReady();
  //   screenRedirect();
  // }

  // Determine the relevant screen and redirect accordingly
  // void screenRedirect() async {
  //   try {
  //     final url = Uri.parse('http://your-server-domain.com/api/check-auth');
  //     final response = await http.get(url);

  //     if (response.statusCode == 200) {
  //       // User is authenticated
  //       final userData = json.decode(response.body);
  //       final bool emailVerified = userData['emailVerified'] ?? false;

  //       if (emailVerified) {
  //         //Get.offAll(() => const NavigationMenu());
  //       } else {
  //         // Get.offAll(() => VerifyEmailPage(email: userData['email']));
  //       }
  //     } else {
  //       // User is not authenticated or token expired
  //       final bool isFirstTime = await checkFirstTimeLaunch();

  //       if (!isFirstTime) {
  //         Get.offAll(const LoginPage());
  //       } else {
  //         Get.offAll(const OnBoardingPages());
  //       }
  //     }
  //   } catch (e) {
  //     // Handle any exceptions that occur during the redirection process
  //     print('Error during redirection: $e');
  //   }
  // }

  // Check if it's the first time launching the app
  // Future<bool> checkFirstTimeLaunch() async {
  //   final box = GetStorage();

  //   bool isFirstTime = box.read('isFirstTime') ?? true;

  //   if (isFirstTime) {
  //     box.write('isFirstTime', false);
  //   }

  //   return isFirstTime;
  // }

  ///! [EmailAuthentication] - LOGIN
  Future<http.Response> login(String email, String password) async {
    final body = jsonEncode({'email': email, 'password': password});
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
    );

    return response;
  }

  ///! [EmailAuthentication] - REGISTER
  Future<http.Response> register(String name, String email, String password,
      String passwordConfirmation) async {
    final body = jsonEncode({
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': passwordConfirmation
    });
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
    );

    return response;
  }

  ///! [EmailAuthentication] - Code Confirmation
  Future<http.Response> codeConfirmation(String email, String code) async {
    final body = jsonEncode({'email': email, 'code': code});
    final response = await http.post(
      Uri.parse('$baseUrl/checkVerify'),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
    );

    return response;
  }

  ///! [EmailAuthentication] - Email verify
  Future<http.Response> verifyEmail(String email) async {
    final body = jsonEncode({'email': email});
    final response = await http.post(
      Uri.parse('$baseUrl/verifyCode'),
      body: body,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
    );

    return response;
  }
// Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
//     try {
//         return await _auth.createUserWithEmailAndPassword(email: email, password: password);
//     } on FirebaseAuthException catch (e) {
//         throw TFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e) {
//         throw TFirebaseException(e.code).message;
//     } on FormatException catch (_) {
//         throw const TFormatException();
//     } on PlatformException catch (e) {
//         throw TPlatformException(e.code).message;
//     } catch (e) {
//         throw 'Something went wrong. Please try again';
//     }
// }
}
