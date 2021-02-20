import 'package:flutter/material.dart';
import 'package:flutter_app_01/color_pallet.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultAccentText extends StatelessWidget {
  final String text;
  final ColorPallet colorPallet;

  ResultAccentText(this.text, this.colorPallet, {key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kosugiMaru(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        color: colorPallet.sub,
      ),
    );
  }
}
