// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/constants/colors.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int value = 0;

  @action
  void incre() {
    value++;
  }

  @action
  void decre() {
    if (value > 0) {
      value--;
    }
  }

  @observable
  bool bookmarked = false;

  @action
  void setFilled(bool value) {
    bookmarked = value;
  }

  @observable
  Color containerColor = AppColors.fillColorTFF;

  @action
  void changeContColor(Color color) {
    containerColor = color;
  }

  @observable
  bool selected = true;

  @action
  void isSelected(bool value) {
    selected = value;
  }

  @observable
  int selectedIndex = 0;

  @action
  void setSelectedIndex(int index) {
    selectedIndex = index;
  }
}
