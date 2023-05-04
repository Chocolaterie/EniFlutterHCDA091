import 'package:eni_demo/demo/demo-user-provider/user-detail-page.dart';
import 'package:eni_demo/demo/demo-user-provider/user-provider-app.dart';
import 'package:eni_demo/demo/demo-user-provider/user-provider.dart';
import 'package:eni_demo/pages/demo-form.dart';
import 'package:eni_demo/pages/demo-listview-page.dart';
import 'package:eni_demo/pages/demo-stateful-widget-page.dart';
import 'package:eni_demo/pages/demo-widget.dart';
import 'package:eni_demo/pages/eni-demo-page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  // Run app pour la demo user provider
  // runApp(const UserProviderApp());
}

// Application Flutter
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Page d'accueil
      routes: {
        "/": (context) => DemoWidgetPage(),
        "/page2": (context) => DemoFormStatefulPage()
      },
    );
  }
}
