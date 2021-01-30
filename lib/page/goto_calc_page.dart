import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/widget/template/cal_template.dart';
import 'package:intl/intl.dart';

class GotoCalcPage extends StatelessWidget {
  GotoCalcPage({Key key, this.title}) : super(key: key);

  final String title;

  final formatter = NumberFormat("#,###");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: CalcTemplate(),
    );
  }
}
