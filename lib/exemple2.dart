import 'package:flutter/material.dart';
class Exemple2 extends StatelessWidget {
  const Exemple2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ShowBanner(),
          ShowTitre1(),
          ShowTitre2(),
          ShowImage(),
          ShowIconsAndLabels(),
          ShowTwoImages(),
          ShowForm(),
          ShowButton(),


        ],
      ),
    );
  }
}

class ShowBanner extends StatelessWidget {
  const ShowBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset("assets/images/img.png");
  }
}

class ShowTitre1 extends StatelessWidget {
  const ShowTitre1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("First Title",
    style: TextStyle(
      color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20
    )
      ,);
  }
}

class ShowTitre2 extends StatelessWidget {
  const ShowTitre2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Second Title",
    style: TextStyle(
      color: Colors.pinkAccent, fontWeight: FontWeight.bold, fontSize: 15
    ),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/img.png",
        width: 100,
        height: 100,),
        const Column(
          children: [
            Text("Je suis en GLSIA",
            style: TextStyle(fontSize: 17),
            softWrap: true,),
            Text("Nous avons un cours de Flutter",
            style: TextStyle(fontSize: 17),
            softWrap: true,)

          ],
        )
      ],
    );

  }
}

class ShowIconsAndLabels extends StatelessWidget {
  const ShowIconsAndLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_hospital_rounded,
              color: Colors.red,
            ),
            Text(
              "Hospital",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.airplanemode_active_rounded,
              color: Colors.blue,
            ),
            Text(
              "Airport",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.group_rounded, color: Colors.brown),
            Text(
              "School",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}

class ShowTwoImages extends StatelessWidget {
  const ShowTwoImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/img.png",
          width: 150,
          height: 150,
        ),
        Image.asset(
          "assets/images/img.png",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}

class ShowForm extends StatelessWidget {
  const ShowForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  "email:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("email")),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(height: 3),
        ],
      ),
    );
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      child: const Text(
        "voir plus",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

