import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';

class SelectArea extends StatelessWidget {
  GotoModel _gotoModel;
  SelectArea(this._gotoModel);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SelectButton(
                Icons.face,
                "1名",
                () {},
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SelectButton(Icons.hotel, "1泊2日", () {}),
          ),
        ),
      ],
    );
  }
}
