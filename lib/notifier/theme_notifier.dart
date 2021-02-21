import 'package:hooks_riverpod/all.dart';

import '../color_pallet.dart';

final themeProvider = StateNotifierProvider((_) => ThemeNotifer());

class ThemeNotifer extends StateNotifier<ColorPallet> {
  ThemeNotifer() : super(lightThema);
  void setValue(ColorPallet value) => state = value;
}
