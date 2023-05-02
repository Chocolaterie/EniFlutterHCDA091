import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Flex(direction: Axis.vertical, children: [
        // Le top du tweet
        Flex(
          direction: Axis.vertical,
          children: [
            // 1er ligne (author - time)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                direction: Axis.horizontal,
                children: const [
                  // Author
                  Expanded(
                    child: Text("LaCrevette@Chocolatine"),
                  ),
                  // Time
                  Text("50s")
                ],
              ),
            ),
            //Message du tweet
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam"),
            )
          ],
        ),
        // Footer
        Padding(
          padding: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.horizontal,
            // Mes 3 boutons
            children: const [
              Expanded(
                  child: Text(
                "Répondre",
                textAlign: TextAlign.center,
              )),
              Expanded(child: Text("Retweet", textAlign: TextAlign.center)),
              Expanded(child: Text("Favoris", textAlign: TextAlign.center))
            ],
          ),
        ),
      ]),
    ));
  }
}
