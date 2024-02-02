import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Flutter",
        style: GoogleFonts.exo(
          fontWeight: FontWeight.w700,
            color: Colors.white,

          fontSize: 30
        )
        ),
        Text("Login",
        style: GoogleFonts.exo(
          fontWeight: FontWeight.bold,
            color: Colors.lightGreen.shade400,
          fontSize: 30
        ),)
      ],
    );

  }
}
