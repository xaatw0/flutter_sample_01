import 'package:flutter_app_01/model/goto_model.dart';
import 'package:hooks_riverpod/all.dart';

final resultProvider = StateNotifierProvider((_) => ResultNotifer());

class GotoResult {
  final int minus;
  final int pay;
  final int coupone;

  GotoResult({this.minus, this.pay, this.coupone});
}

class ResultNotifer extends StateNotifier<GotoResult> {
  ResultNotifer() : super(GotoResult(minus: 0, pay: 0, coupone: 0));
  void update(GotoModel model) {
    state = GotoResult(
      minus: model.getMinus(),
      pay: model.getPay(),
      coupone: model.getCoupone(),
    );
  }
}
