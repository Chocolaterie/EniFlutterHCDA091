import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Flex(
        direction: Axis.horizontal,
        // Mes 4 boutons
        children: const [
          Expanded(
              child: Text(
            "Fil",
            textAlign: TextAlign.center,
          )),
          Expanded(child: Text("Notification", textAlign: TextAlign.center)),
          Expanded(child: Text("Message", textAlign: TextAlign.center)),
          Expanded(child: Text("Moi", textAlign: TextAlign.center))
        ],
      ),
    );
  }
}
