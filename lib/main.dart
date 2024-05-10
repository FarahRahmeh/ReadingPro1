import 'package:booktaste/auth/login/login_page.dart';
import 'package:booktaste/auth/register/register_page.dart';
import 'package:booktaste/auth/verify_email/verify_email_page.dart';
import 'package:booktaste/binding/general_bindings.dart';
import 'package:booktaste/navigation_menu.dart';
import 'package:booktaste/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  ///Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  ///Getx local strorage
  await GetStorage.init();

  ///await splash until other items load
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  ///laod all the material design/ themes/ localizaations/ binding
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: const RegisterPage(),
    );
  }
}
