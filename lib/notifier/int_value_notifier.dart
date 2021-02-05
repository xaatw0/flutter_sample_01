import 'package:hooks_riverpod/all.dart';

final peopleProvider = StateNotifierProvider((_) => IntValueNotifer());
final stayProvider = StateNotifierProvider((_) => IntValueNotifer());
final priceProvider = StateNotifierProvider((_) => IntValueNotifer());

class IntValueNotifer extends StateNotifier<int> {
  IntValueNotifer() : super(0);
  void setValue(int value) => state = value;
}
