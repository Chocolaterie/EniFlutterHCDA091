import 'package:eni_demo/content-page.dart';
import 'package:eni_demo/footer-page.dart';
import 'package:eni_demo/header-page.dart';
import 'package:flutter/material.dart';

class EniDemoPage extends StatelessWidget {

  const EniDemoPage({super.key});

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
