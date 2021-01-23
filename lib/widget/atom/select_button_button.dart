import 'package:flutter/material.dart';

class SelectButtonButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;

  SelectButtonButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: child,
      onPressed: onPressed,
      color: Colors.lightBlueAccent,
      shape: StadiumBorder(
        side: BorderSide(),
      ),
    );
  }
}
