import 'package:flutter/material.dart';

class DemoWidgetPage extends StatelessWidget {

  void testButton(){
    print("Cliquez, cliquez");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Module 3")),
      body: Flex(
        direction: Axis.vertical,
        children: [
          // Image.network("https://m.media-amazon.com/images/I/61nGkrhr7VL.jpg"),
          // Image.asset("images/pain_choco.jpg")

          // Champ de Saisie : Email
          TextField(
            decoration: InputDecoration(
                labelText: "Email", hintText: "email@example.com"),
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => testButton(), 
            child: Text("Mon Button")),
          ),

        ],
      ),
    );
  }
}
