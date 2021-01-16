import 'package:flutter/cupertino.dart';

class GotoModel {
  int _price = 0;
  int _person = 1;
  int _stay = 0;

  int _minus = 0;
  int _coupon = 0;
  int _pay = 0;

  void setPrice(int price) {
    _price = price;
  }

  void setPerson(int person) {
    _person = person;
  }

  void setSay(int stay) {
    _stay = stay;
  }
}
