import 'package:eni_demo/demo/demo-user-provider/user-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class UserDetailPage extends StatefulWidget {
  @override
  State<UserDetailPage> createState() {
    return UserDetailState();
  }
}

class UserDetailState extends State<UserDetailPage> {
  void simulateLogin() {
    // récupére le provider (singleton)
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);

    // mettre à jour le provider
    userProvider.onLogin(User(email: "ChocolatinePizzaAnanas@campus-eni.fr"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Demo User Provider")),
        // ListView
        body: Flex(
          direction: Axis.vertical,
          children: [
            // Que faire lorsque le provider est mise à jour et notifie
            Consumer<UserProvider>(builder: (context, userProvider, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${userProvider.user.email}'),
              );
            }),
            // Bouton pour tester la mise à jour du provider
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      simulateLogin();
                    },
                    child: const Text("Se connecter")),
              ),
            )
          ],
        ));
  }
}
