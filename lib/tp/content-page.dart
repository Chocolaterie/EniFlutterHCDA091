import 'package:eni_demo/components/login-form.dart';
import 'package:eni_demo/components/tweet-item.dart';
import 'package:eni_demo/tp/twitter-list-widget.dart';
import 'package:flutter/material.dart';

// Mon button en mode icon dans le footer du tweet
class FooterTwitterIconButton extends StatelessWidget {
  String imagePath;

  // constructor
  FooterTwitterIconButton(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
      icon: Image.asset(this.imagePath),
      onPressed: () {},
    ));
  }
}

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Flex(direction: Axis.vertical, children: [
        // Mon formulaire
        LoginForm(),
      ]),
    ));
  }
}
