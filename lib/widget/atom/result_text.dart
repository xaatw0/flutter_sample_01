import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultText extends StatelessWidget {
  final String text;

  ResultText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kosugiMaru(),
    );
  }
}
