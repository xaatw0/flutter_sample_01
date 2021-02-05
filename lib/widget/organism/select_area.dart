import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';

class SelectArea extends StatelessWidget {
  GotoModel _gotoModel;
  SelectArea(this._gotoModel);

  List<String> lstPeople = [for (int i = 0; i < 11; i++) "${i + 1}名"];
  List<String> lstStay = [
    "日帰り",
    ...[for (int i = 0; i < 7; i++) "${i + 1}泊${i + 2}日"],
    "8泊以上"
  ];

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
                () async {
                  int result = await showConfirmationDialog<int>(
                    context: context,
                    title: '人数',
                    message: '宿泊する人数を選んでください',
                    actions: [
                      ...List.generate(
                        lstPeople.length,
                        (index) => AlertDialogAction(
                          label: '${lstPeople[index]}',
                          key: index,
                        ),
                      ),
                    ],
                  );
                  print(result);
                },
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
