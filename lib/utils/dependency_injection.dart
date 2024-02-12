import 'package:get/get.dart';

import '../data/data_provider/remote/home/home_api_provider.dart';
import '../data/repository/home/home_repository.dart';

class AppBinding extends Bindings {
  AppBinding();

  @override
  void dependencies() {
    Get.put<HomeApiProvider>(HomeApiProvider(), permanent: true);
    Get.put<HomeRepository>(HomeRepository(), permanent: true);
  }

  static Future<void> deleteDependencies() async {
    await Get.delete<HomeApiProvider>(force: true);
    await Get.delete<HomeRepository>(force: true);
  }
}
