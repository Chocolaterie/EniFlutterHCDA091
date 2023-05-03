import 'package:eni_demo/content-page.dart';
import 'package:flutter/material.dart';

class TweetItem extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
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
            children: [
              FooterTwitterIconButton("images/reply.png"),
              FooterTwitterIconButton("images/retweet.png"),
              FooterTwitterIconButton("images/favorite.png")
            ],
          ),
        )
      ],
    );
  }
}
