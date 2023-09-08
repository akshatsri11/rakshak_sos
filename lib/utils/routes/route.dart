import 'package:flutter/material.dart';
import 'package:rakshak_sos/utils/routes/routes_name.dart';
import 'package:rakshak_sos/view/home_screen.dart';
import 'package:rakshak_sos/view/login_screen.dart';
import 'package:rakshak_sos/view/signup_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      // case RoutesName.splash:
      //   return MaterialPageRoute(builder: (context) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}
