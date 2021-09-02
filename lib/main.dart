import 'package:flutter/material.dart';

import 'app/app_route.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Me Back',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.registerCustomer,
    );
  }
}
