import 'package:empower_app/src/screens/information/leve.dart';
import 'package:empower_app/src/screens/information/queHacer.dart';
import 'package:empower_app/src/screens/services/ubica.dart';
import 'package:flutter/material.dart';
import 'package:empower_app/src/screens/home.dart';
import 'package:empower_app/src/screens/registro.dart';
import 'package:empower_app/src/screens/login.dart';
// import 'package:empower_app/src/screens/services/OtrosServices.dart';

class Routes {
  static const String home = '/';
  static const String registro = '/registro';
  static const String login = '/login';
  // static const String rutasAccesibles = '/rutasAccesibles';
  static const String queHacer = '/queHacer';
  static const String ubica = '/ubica';
  static const String leve = '/leve';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case registro:
        return MaterialPageRoute(builder: (_) => const Register());
      case login:
        return MaterialPageRoute(builder: (_) => const Login());
      case ubica:
        return MaterialPageRoute(builder: (_) => const Ubica());
      case queHacer:
        return MaterialPageRoute(builder: (_) => const QueHacer());
      case leve:
        return MaterialPageRoute(builder: (_) => const Leve());
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
