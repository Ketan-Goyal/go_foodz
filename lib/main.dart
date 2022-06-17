import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_foodz/helper/dependencies.dart' as dep;
import 'package:go_foodz/screens/food/Recommended_food_details.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainFoodPage(),
      home: RecommendedFoodDetalis(),
    );
  }
}
