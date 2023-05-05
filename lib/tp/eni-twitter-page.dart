import 'package:eni_demo/tp/content-page.dart';
import 'package:eni_demo/tp/footer-page.dart';
import 'package:eni_demo/tp/header-page.dart';
import 'package:flutter/material.dart';

class EniTwitterPage extends StatelessWidget {
  const EniTwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            // header
            HeaderPage(),
            // content
            ContentPage(),
            // footer
            FooterPage()
          ],
        ));
  }
}
