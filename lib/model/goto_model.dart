import 'package:flutter/cupertino.dart';

class GotoModel {
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
    return (_price * 0.35).floor();
  }

  int getPay() {
    return (_price * 0.65).floor();
  }

  int getCoupone() {
    return (_price * 0.15).floor();
  }
}
