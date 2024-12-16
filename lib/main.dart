import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_finder/routes.dart';
import 'package:lawyer_finder/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
