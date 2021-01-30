enum CalcKey {
  KEY_0,
  KEY_1,
  KEY_2,
  KEY_3,
  KEY_4,
  KEY_5,
  KEY_6,
  KEY_7,
  KEY_8,
  KEY_9,
  KEY_00,
  KEY_DEL,
  KEY_CLEAR,
}

class CalcModel {
  int _value = 0;

  get value => _value;

  void push(CalcKey key) {
    if (key.index < CalcKey.KEY_00.index) {
      _value = _value * 10 + key.index;
    }
  }
}
