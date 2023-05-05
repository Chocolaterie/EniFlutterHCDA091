import 'package:flutter/material.dart';

/// Composant : Bouton du footer
class FooterButton extends StatelessWidget {

  String label;

  FooterButton(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(this.label, textAlign: TextAlign.center));
  }
}


/// Composant : Footer d'une page
class FooterPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Flex(
        direction: Axis.horizontal,
        // Mes 4 boutons
        children: [
          FooterButton("Fil"),
          FooterButton("Notification"),
          FooterButton("Message"),
          FooterButton("Moi")
        ],
      ),
    );
  }
}
