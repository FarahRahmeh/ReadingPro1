import 'package:get_storage/get_storage.dart';

Future<String?> getToken() async {
  final box = GetStorage();
  return box.read('TOKEN');
}

Future<void> saveToken(String token) async {
  final box = GetStorage();
  await box.write('TOKEN', token);
}
