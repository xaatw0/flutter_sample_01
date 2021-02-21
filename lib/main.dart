import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/page/goto_calc_page.dart';
import 'package:flutter_app_01/widget/atom/select_button_button.dart';
import 'package:flutter_app_01/widget/atom/select_button_icon.dart';
import 'package:flutter_app_01/widget/atom/select_button_text.dart';
import 'package:flutter_app_01/widget/molecule/calc_button.dart';
import 'package:flutter_app_01/widget/molecule/calc_flat_button.dart';
import 'package:flutter_app_01/widget/molecule/function_button.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_app_01/widget/organism/calc_area.dart';
import 'package:flutter_app_01/widget/organism/function_area.dart';
import 'package:flutter_app_01/widget/organism/result_area.dart';
import 'package:flutter_app_01/widget/organism/select_area.dart';
import 'package:flutter_app_01/widget/template/cal_template.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GotoCalcPage(title: 'GOTOトラベル計算機'),
    );
  }
}
