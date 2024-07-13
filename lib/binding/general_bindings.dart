import 'package:booktaste/controllers/favourites/favourite_controller.dart';
import 'package:booktaste/data/services/network_manager.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
    Get.put(FavController());
  }
}
