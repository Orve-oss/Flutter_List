import "package:composant/authentification.dart";
import "package:composant/exemple1.dart";
import "package:composant/exemple2.dart";
import "package:composant/restApi.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: RestApi(),
    );
  }
}




