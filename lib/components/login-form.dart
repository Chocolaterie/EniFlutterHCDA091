import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  // propriétés
  String errorMessage = "";

  // Le binding des deux champs saisies (email et password)
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

  // la méthode pour faire le traitement
  void surfaceControl() {
    // par défaut pas d'erreur
    bool success = true;

    // Verifier si aucun champs n'est vide
    if (emailTEC.text.isEmpty) {
      // error
      success = false;
    }
    // Verifier si aucun champs n'est vide
    if (passwordTEC.text.isEmpty) {
      // error
      success = false;
    }

    // Si il y'a au moins une erreur
    setState(() {
      // Si tout va bien aucun message d'erreur
      if (success) {
        errorMessage = "";
      }
      // Sinon message d'erreur
      else {
        errorMessage = "Erreur, les champs sont invalides";
      }
      // Version ternaire
      // errorMessage = success ? "" : "Erreur, les champs sont invalides";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text("Connexion à Twitter"),
        ),

        TextField(
          controller: emailTEC,
          decoration: const InputDecoration(labelText: "Identifiant"),
        ),

        TextField(
          controller: passwordTEC,
          obscureText: true,
          decoration: const InputDecoration(labelText: "Password"),
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
                  onPressed: () {
                    surfaceControl();
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.0),
                    child: Text("Connexion"),
                  ))),
        ),

        // Affichera le message d'erreur
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.redAccent, fontSize: 16),
          ),
        )
      ],
    );
  }
}
