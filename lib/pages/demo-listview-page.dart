import 'package:flutter/material.dart';

class MyLineItem extends StatelessWidget {
  String label;

  MyLineItem(this.label);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: const Color(0xFFEEEEEE),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class DemoListViewPage extends StatelessWidget {

  // Ma liste de données
  var lists = ["Isaac", "Julien", "Bruno"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Module 3")),
      // ListView
      body: ListView.builder(
          itemCount: lists.length,
          itemBuilder: (BuildContext context, int index) {
            return MyLineItem(lists[index]);
          }),
    );
  }
}
