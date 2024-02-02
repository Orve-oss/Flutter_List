import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  const IconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      //color: Colors.pinkAccent,
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color:  Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 3),
            )
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
