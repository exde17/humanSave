import 'package:empower_app/src/screens/information/queHacer.dart';
import 'package:empower_app/src/screens/services/rutasAccesibles.dart';
import 'package:flutter/material.dart';
import 'package:empower_app/src/screens/home.dart';
import 'package:empower_app/src/screens/registro.dart';
import 'package:empower_app/src/screens/login.dart';
// import 'package:empower_app/src/screens/services/OtrosServices.dart';

class Routes {
  static const String home = '/';
  static const String registro = '/registro';
  static const String login = '/login';
  static const String rutasAccesibles = '/rutasAccesibles';
  static const String queHacer = '/queHacer';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case registro:
        return MaterialPageRoute(builder: (_) => const Register());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case rutasAccesibles:
        return MaterialPageRoute(builder: (_) => const RutasAccesibles());
      case queHacer:
        return MaterialPageRoute(builder: (_) => const QueHacer());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
