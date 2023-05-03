import 'package:flutter/material.dart';

class DemoWidgetPage extends StatelessWidget {

  // Ma liste de données
  var lists = ["Isaac", "Julien", "Bruno"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Module 3")),
      // ListView
      body: Container(),
    );
  }
}
