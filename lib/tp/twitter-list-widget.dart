import 'dart:convert';

import 'package:eni_demo/components/tweet-item.dart';
import 'package:eni_demo/tp/tweet.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sn_progress_dialog/progress_dialog.dart';

class TwitterListWidget extends StatefulWidget {
  const TwitterListWidget({super.key});

  @override
  State<TwitterListWidget> createState() {
    return TwitterListWidgetState();
  }
}

class TwitterListWidgetState extends State<TwitterListWidget> {
  // ma liste de données de tweet
  List<Tweet> tweets = [];

  @override
  void initState() {
    super.initState();
    // Que faire aprés le chargement de la vue
    WidgetsBinding.instance.addPostFrameCallback((duration) => callApi());
  }

  void callApi() async {
    // Affiche une dialog box
    ProgressDialog pd = ProgressDialog(context: context);
    pd.show(msg: 'Tweets en cours de chargement...');

    // Simule du temps de chargement
    await Future<void>.delayed(const Duration(seconds: 1));

    // Récupère la réponse de la requête HTTP
    var response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Chocolaterie/EniFlutterHCDA091/master/api/tweets.json"));

    // Si correcte
    if (response.statusCode == 200) {
      // Initialiser le décoder JSON
      const JsonDecoder decoder = JsonDecoder();

      // Je map ma réponse HTTP en JSON
      Map<String, dynamic> json = decoder.convert(response.body);

      // Transformer ce JSON en article

      var tweetsJson = (json['tweets'] as List);

      // Pour chaque iteration dans le json -> ajouter dans la liste un article
      List<Tweet> tweetsToMap = [];
      for (var tweetJson in tweetsJson) {
        tweetsToMap.add(Tweet.fromJson(tweetJson));
      }

      // Mettre à jour l'ecran avec les articles récupérés
      setState(() {
        tweets = tweetsToMap;

        // Fermer la dialog box
        pd.close();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ma ListView d'article
    return Expanded(
      child: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (BuildContext context, int index) {
            return TweetItem(tweets[index]);
          }),
    );
  }
}
