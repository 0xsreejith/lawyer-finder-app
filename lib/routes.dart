import 'package:get/get.dart';
import 'package:lawyer_finder/views/home_page.dart';
import 'package:lawyer_finder/views/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/home', page: () => const HomePage()),
  ];
}
