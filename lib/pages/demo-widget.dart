import 'package:flutter/material.dart';

class DemoWidgetPage extends StatelessWidget {
  // Ma liste de données
  var lists = ["Isaac", "Julien", "Bruno"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Page")),
      // ListView
      body: Center(
          child: ElevatedButton(
        child: const Text("Ouvrir page 2"),
        onPressed: () {
          Navigator.pushNamed(context, "/page2");
        },
      )),
    );
  }
}
