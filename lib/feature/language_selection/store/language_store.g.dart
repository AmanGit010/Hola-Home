// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LanguageStore on _LanguageStoreBase, Store {
  late final _$checkedAtom =
      Atom(name: '_LanguageStoreBase.checked', context: context);

  @override
  bool get checked {
    _$checkedAtom.reportRead();
    return super.checked;
  }

  @override
  set checked(bool value) {
    _$checkedAtom.reportWrite(value, super.checked, () {
      super.checked = value;
    });
  }

  late final _$selectedLanguagesAtom =
      Atom(name: '_LanguageStoreBase.selectedLanguages', context: context);

  @override
  ObservableList<String> get selectedLanguages {
    _$selectedLanguagesAtom.reportRead();
    return super.selectedLanguages;
  }

  @override
  set selectedLanguages(ObservableList<String> value) {
    _$selectedLanguagesAtom.reportWrite(value, super.selectedLanguages, () {
      super.selectedLanguages = value;
    });
  }

  late final _$_LanguageStoreBaseActionController =
      ActionController(name: '_LanguageStoreBase', context: context);

  @override
  void isChecked() {
    final _$actionInfo = _$_LanguageStoreBaseActionController.startAction(
        name: '_LanguageStoreBase.isChecked');
    try {
      return super.isChecked();
    } finally {
      _$_LanguageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleLanguageSelection(String language) {
    final _$actionInfo = _$_LanguageStoreBaseActionController.startAction(
        name: '_LanguageStoreBase.toggleLanguageSelection');
    try {
      return super.toggleLanguageSelection(language);
    } finally {
      _$_LanguageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
checked: ${checked},
selectedLanguages: ${selectedLanguages}
    ''';
  }
}
