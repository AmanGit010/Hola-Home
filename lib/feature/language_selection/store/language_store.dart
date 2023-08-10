import 'package:mobx/mobx.dart';
part 'language_store.g.dart';

class LanguageStore = _LanguageStoreBase with _$LanguageStore;

abstract class _LanguageStoreBase with Store {
  @observable
  bool checked = false;

  @action
  void isChecked() {
    //
  }

  //trial
  @observable
  ObservableList<String> selectedLanguages = ObservableList<String>();

  @action
  void toggleLanguageSelection(String language) {
    if (selectedLanguages.contains(language)) {
      selectedLanguages.remove(language);
    } else {
      selectedLanguages.add(language);
    }
  }
}
