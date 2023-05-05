import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DemoApiPage extends StatefulWidget {
  @override
  State<DemoApiPage> createState() {
    return DemiApiPageState();
  }
}

class DemiApiPageState extends State<DemoApiPage> {
  void callApi() async {
    // Récupère la réponse de la requête HTTP
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Chocolaterie/EniFlutterHCDA091/master/api/get-articles.json"));

    // Si correcte
    if (response.statusCode == 200) {
      // Initialiser le décoder JSON
      const JsonDecoder decoder = JsonDecoder();

      // Je map ma réponse HTTP en JSON
      Map<String, dynamic> json = decoder.convert(response.body);

      // Transformer ce JSON en article
      print("Fini");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo API")),
      // ListView
      body: Flex(
        direction: Axis.vertical,
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  callApi();
                },
                child: const Text("Appeler l'API")),
          )
        ],
      ),
    );
  }
}
