// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$valueAtom = Atom(name: '_HomeStoreBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$bookmarkedAtom =
      Atom(name: '_HomeStoreBase.bookmarked', context: context);

  @override
  bool get bookmarked {
    _$bookmarkedAtom.reportRead();
    return super.bookmarked;
  }

  @override
  set bookmarked(bool value) {
    _$bookmarkedAtom.reportWrite(value, super.bookmarked, () {
      super.bookmarked = value;
    });
  }

  late final _$containerColorAtom =
      Atom(name: '_HomeStoreBase.containerColor', context: context);

  @override
  Color get containerColor {
    _$containerColorAtom.reportRead();
    return super.containerColor;
  }

  @override
  set containerColor(Color value) {
    _$containerColorAtom.reportWrite(value, super.containerColor, () {
      super.containerColor = value;
    });
  }

  late final _$selectedAtom =
      Atom(name: '_HomeStoreBase.selected', context: context);

  @override
  bool get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_HomeStoreBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void incre() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.incre');
    try {
      return super.incre();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decre() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.decre');
    try {
      return super.decre();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFilled(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setFilled');
    try {
      return super.setFilled(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeContColor(Color color) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.changeContColor');
    try {
      return super.changeContColor(color);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isSelected(bool value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.isSelected');
    try {
      return super.isSelected(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedIndex(int index) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
bookmarked: ${bookmarked},
containerColor: ${containerColor},
selected: ${selected},
selectedIndex: ${selectedIndex}
    ''';
  }
}
