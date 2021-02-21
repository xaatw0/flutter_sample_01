import 'package:flutter/material.dart';
import 'package:flutter_app_01/widget/template/cal_template.dart';

class GotoCalcPage extends StatefulWidget {
  GotoCalcPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GotoCalcPageState createState() => _GotoCalcPageState();
}

class _GotoCalcPageState extends State<GotoCalcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CalcTemplate()),
    );
  }
}
