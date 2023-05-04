import 'package:flutter/material.dart';

class PersonTest {
  String? firstname;

  PersonTest({this.firstname});
}

// La page contenant la demo
class DemoStatefulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Stateful'),
        ),
        body: DemoStatefulWidget());
  }
}

// Stateful widget
class DemoStatefulWidget extends StatefulWidget {
  // Associer mon state
  @override
  State<DemoStatefulWidget> createState() {
    return _DemoStatefulWidgetState();
  }
}

class _DemoStatefulWidgetState extends State<DemoStatefulWidget> {
  // Par defaut
  int _counter = 0;
  PersonTest person = PersonTest(firstname: "Isaac");
  // la classe qui permet d'écouter la valeur d'un TextField (champ de saisie)
  TextEditingController textFieldController = TextEditingController();

  void incrementCounter() {
    setState(() {
      // J'affiche ma saisie
      print(textFieldController.text);

      // j'incremente le compteur
      _counter++;
      // je change le prenom
      person.firstname = 'New prenom -> $_counter';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.vertical,
        children: [
          // Un champ de saisie
          TextField(
            controller: textFieldController, // ecouter la valeur du champs
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Compteur : $_counter',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Person : ${person.firstname}',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () => {incrementCounter()},
              child: const Text("Incrementer"))
        ],
      ),
    );
  }
}
