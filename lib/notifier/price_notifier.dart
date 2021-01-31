import 'package:hooks_riverpod/all.dart';

class PriceNotifer extends StateNotifier<int> {
  PriceNotifer() : super(0);
  void setPrice(int price) => state = price;
}
