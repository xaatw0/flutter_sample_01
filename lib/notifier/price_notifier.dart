import 'package:hooks_riverpod/all.dart';

final priceProvider = StateNotifierProvider((_) => PriceNotifer());

class PriceNotifer extends StateNotifier<int> {
  PriceNotifer() : super(0);
  void setPrice(int price) => state = price;
}
