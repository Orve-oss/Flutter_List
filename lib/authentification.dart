import 'package:composant/section/IconSection.dart';
import 'package:composant/section/InputSection.dart';
import 'package:composant/section/TitleSection.dart';
import 'package:flutter/material.dart';
class Authentification extends StatelessWidget {
  const Authentification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blueAccent.shade700, Colors.blue.shade900],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,)
      ),
        child: Column(
          children: [IconSection(),
          TitleSection(),
          InputSection()],
        ),
        ),
      );
  }
}
