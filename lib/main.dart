import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management3/bindings/my_binding.dart';
import 'package:getx_state_management3/screen1.dart';
import 'package:getx_state_management3/screen2.dart';
import 'package:getx_state_management3/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBinding(),
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

/**
 * * First see [[./bindings/my_bindings.dart]]
 * * With this parameter in GetMaterialApp we bind our controllers and our code
 * $ initialBinding: MyBinding()
 */
