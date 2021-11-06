import 'package:flutter/material.dart';
import 'package:paymeback/constant/theme_changer.dart';

import 'app/app_route.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        defaultBrightness: Brightness.light,
        builder: (context, _brightness) {
          return MaterialApp(
            title: 'Pay Me Back',
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              brightness: _brightness,
            ),
            onGenerateRoute: route.controller,
            initialRoute: route.homeTabs,
          );
        });
  }
}
