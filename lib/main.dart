import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const EniDemoPage(),
    );
  }
}

class EniDemoPage extends StatelessWidget {
  const EniDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Flex(direction: Axis.vertical, 
      children: [
        // HEADER : Bloc bleu (Le header)
        Container(color: Color(0xFF58B0F0),  
          child: 
            // Flex pour afficher 3 boutons horizontal
            Padding(
              padding: const EdgeInsets.all(20),
              child: Flex(direction: Axis.horizontal, 
                // Mes 3 boutons
                children: [
                    Expanded(child: Text("Nouveau", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
                    Expanded(child: Text("Accueil", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                    Expanded(child: Text("Rechercher", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                ],),
            ),),
            // Milieu,
            Expanded(child: Container(color: Colors.amber,)),
            // Footer
            Flex(direction: Axis.horizontal,children: []),
      ],)
    );
  }
}
