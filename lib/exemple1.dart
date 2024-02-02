import 'package:flutter/material.dart';

class Exemple1 extends StatelessWidget {
  const Exemple1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: ShowButton(),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Bienvenue au cours de Flutter",
    style: TextStyle(
        color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/img.png");
  }
}

class ShowIcon extends StatelessWidget {
  const ShowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.emoji_emotions_outlined,
    color: Colors.amberAccent,
        size: 160,);
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
        child: const Text('Click!!!!!!!!!!'));
  }
}



