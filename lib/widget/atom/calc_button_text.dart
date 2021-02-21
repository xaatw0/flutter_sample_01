import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButtonText extends StatelessWidget {
  final String text;
  final ColorPallet colorPallet;

  CalcButtonText(this.text, this.colorPallet);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kosugiMaru(
        fontSize: 30,
        fontWeight: FontWeight.w300,
        color: colorPallet.base,
      ),
    );
  }
}
