
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Flex(direction: Axis.vertical, children: [

      const Padding(
        padding: EdgeInsets.all(10),
        child: Text("Connexion à Twitter"),
      ),

      const TextField(decoration: InputDecoration(labelText: "Identifiant"),),

      const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password"),),

      // Attention une ligne qui va afficher horizontalement deux telements
      Flex(direction: Axis.horizontal, children: [
        Switch(value: false, onChanged: (bool value) {}), const Text("Mémoriser mes informations")
      ],),

      // Bouton Connexion
      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text("Connexion")))

    ],);
  }


}