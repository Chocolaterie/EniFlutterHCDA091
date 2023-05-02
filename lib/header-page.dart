import 'package:flutter/material.dart';

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
          children: const [
            Expanded(
                child: Text(
                  "Nouveau",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
            )),
            Expanded(
                child: Text("Accueil",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white))),
            Expanded(
                child: Text("Rechercher",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
