import 'package:flutter/material.dart';

import 'package:artemis_app/src/presentation/pages/home_screen/home_screen.dart';
import 'package:artemis_app/src/presentation/pages/details_screen/details_screen.dart';

class AppRouter {
  static const String initialRoute = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const HomeScreen());
      case DetailsScreen.routeName:
        return _materialRoute(const DetailsScreen());
      default:
        return _materialRoute(
          Scaffold(
            appBar: AppBar(title: const Text('Ruta no encontrada')),
            body: Center(
              child: Text('No existe la ruta: ${settings.name}'),
            ),
          ),
        );
    }
  }

  static MaterialPageRoute<dynamic> _materialRoute(Widget page) {
    return MaterialPageRoute(builder: (_) => page);
  }
}