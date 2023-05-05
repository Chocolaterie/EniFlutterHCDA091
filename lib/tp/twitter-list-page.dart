import 'package:eni_demo/tp/footer-page.dart';
import 'package:eni_demo/tp/header-page.dart';
import 'package:eni_demo/tp/twitter-list-widget.dart';
import 'package:flutter/material.dart';

class TwitterListPage extends StatelessWidget {
  const TwitterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste des tweets'),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            // header
            HeaderPage(),
            // content
            const TwitterListWidget(),
            // footer
            FooterPage()
          ],
        ));
  }
}
