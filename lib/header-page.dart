import 'package:flutter/material.dart';

// Mon button dans le header
class HeaderButton extends StatelessWidget {
  // properties
  String label;

  // constructor
  HeaderButton(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      this.label,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white),
    ));
  }
}

// Mon button en mode icon dans le header
class HeaderIconButton extends StatelessWidget {

  String imagePath;

  // constructor
  HeaderIconButton(this.imagePath ,{super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(icon: Image.asset(this.imagePath), onPressed: () {},));
  }
}

// Notre class qui est un Widget, affichant le Header
class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      child:
          // Flex pour afficher 3 boutons horizontal
          Padding(
        padding: const EdgeInsets.all(20),
        child: Flex(
          direction: Axis.horizontal,
          // Mes 3 boutons
          children: [
            HeaderIconButton("images/pencil.png"),
            HeaderButton("Accueil"),
            HeaderIconButton("images/search.png")
          ],
        ),
      ),
    );
  }
}
