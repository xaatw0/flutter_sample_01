import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/widget/organism/select_area.dart';

import 'calc_area.dart';

class InputArea extends StatelessWidget {
  GotoModel _gotoModel = GotoModel();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white24,
              child: Column(
                children: [
                  SelectArea(_gotoModel),
                  CalcArea(_gotoModel),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
