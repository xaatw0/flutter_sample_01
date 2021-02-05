import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_01/model/goto_model.dart';
import 'package:flutter_app_01/notifier/people_notifier.dart';
import 'package:flutter_app_01/widget/molecule/select_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

class SelectArea extends HookWidget {
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
    final people = useProvider(peopleProvider);
    final peopleState = useProvider(peopleProvider.state);
    final stay = useProvider(stayProvider);
    final stayState = useProvider(stayProvider.state);

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SelectButton(
                Icons.face,
                lstPeople[peopleState],
                () async {
                  int result = await showConfirmationDialog<int>(
                    context: context,
                    title: '人数',
                    message: '宿泊する人数を選んでください',
                    actions: createDialogSelect(lstPeople),
                  );
                  people.setpeople(result);
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

  List<AlertDialogAction<int>> createDialogSelect(List<String> list) {
    return List.generate(
      list.length,
      (index) => AlertDialogAction(
        label: '${list[index]}',
        key: index,
      ),
    );
  }
}
