import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';

import 'ThemeButton.dart';

class MenuArea extends HookWidget {
  const MenuArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Align(
        child: ThemeButton(),
        alignment: Alignment.centerRight,
      ),
    );
  }
}
