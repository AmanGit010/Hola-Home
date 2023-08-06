import 'package:mobx/mobx.dart';
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
}
