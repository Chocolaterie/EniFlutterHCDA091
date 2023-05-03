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
          direction: Axis.horizontal,
          children: [
            // Image
            SizedBox(
                width: 125,
                child: Image.asset(
                  "images/pain_choco.jpg",
                  fit: BoxFit.contain,
                )),
            // Le reste
            Expanded(
              child: Flex(
                direction: Axis.vertical,
                children: const [
                  // 1er ligne (author - time)
                  Text("LaCrevette@Chocolatine"),
                  //Message du tweet
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam",
                    ),
                  )
                ],
              ),
            ),
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
