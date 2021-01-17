import 'package:flutter/cupertino.dart';

class GotoModel {
  static const PRICE_LIMIT = 20000;

  int _price = 0;
  int _person = 1;
  int _stay = 0;

  int _minus = 0;
  int _coupon = 0;
  int _pay = 0;

  get price => _price;
  get person => _person;
  get stay => _stay;

  void setPrice(int price) {
    _price = price;
  }

  void setPerson(int person) {
    _person = person;
  }

  void setStay(int stay) {
    _stay = stay;
  }

  int getMinus() {
    int max = PRICE_LIMIT * 2;
    bool isExpensive = max < _price;
    if (isExpensive) {
      return (max * 0.35).toInt();
    }

    return (_price * 0.35).floor();
  }

  int getPay() {
    return _price - getMinus();
  }

  int getCoupone() {
    int max = PRICE_LIMIT * 2;
    bool isExpensive = max < _price;
    if (isExpensive) {
      return (max * 0.15 / 1000).round() * 1000;
    }
    return (_price * 0.15 / 1000).round() * 1000;
  }
}
