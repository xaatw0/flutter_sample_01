import 'package:flutter_app_01/model/goto_model.dart';
import 'package:hooks_riverpod/all.dart';

final resultProvider = StateNotifierProvider((_) => ResultNotifer());

class GotoResult {
  final int minus;
  final int pay;
  final int coupon;

  GotoResult(this.minus, this.pay, this.coupon);
}

class ResultNotifer extends StateNotifier<GotoResult> {
  ResultNotifer() : super(GotoResult(0, 0, 0));
  void updte(GotoModel model) {
    state = GotoResult(
      model.getMinus(),
      model.getPay(),
      model.getCoupone(),
    );
  }
}
