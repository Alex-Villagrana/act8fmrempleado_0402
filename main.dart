import 'package:flutter/material.dart';
import 'inicio.dart';
import 'capturaempleados.dart';
import 'verempleados.dart';

void main() {
  runApp(ZonSkateShopApp());
}

class ZonSkateShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZON SKATE SHOP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[900],
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Roboto', // Default sans-serif, fits the urban look
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InicioScreen(),
        '/captura': (context) => CapturaEmpleadosScreen(),
        '/ver': (context) => VerEmpleadosScreen(),
      },
    );
  }
}
