import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_pages.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.home,
    );
  }
}
