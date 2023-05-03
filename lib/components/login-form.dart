import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text("Connexion à Twitter"),
        ),

        const TextField(
          decoration: InputDecoration(labelText: "Identifiant"),
        ),

        const TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),

        // Attention une ligne qui va afficher horizontalement deux telements
        Flex(
          direction: Axis.horizontal,
          children: [
            Switch(value: false, onChanged: (bool value) {}),
            const Text("Mémoriser mes informations")
          ],
        ),

        // Bouton Connexion
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.0),
                    child: Text("Connexion"),
                  ))),
        )
      ],
    );
  }
}
