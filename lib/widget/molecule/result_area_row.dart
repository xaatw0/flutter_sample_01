import 'package:flutter/material.dart';

class ResultAreaRow extends StatelessWidget {
  Widget textAtom;
  Widget numberAtom;

  ResultAreaRow(this.textAtom, this.numberAtom);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: textAtom,
          ),
        ),
        Expanded(
          flex: 3,
          child: Align(
            alignment: Alignment.centerRight,
            child: numberAtom,
          ),
        ),
      ],
    );
  }
}
