import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_foodz/data/controllers/popular_product_controller.dart';
import 'package:go_foodz/data/repository/popular_product_repo.dart';

import '../data/api/api_client.dart';

Future<void> init() async {
  //api clients
  Get.lazyPut(() => ApiClient(appBaseUrl: "hello"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
