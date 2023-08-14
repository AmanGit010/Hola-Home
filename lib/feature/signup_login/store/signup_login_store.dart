import 'package:mobx/mobx.dart';
part 'signup_login_store.g.dart';

class SignupLoginStore = _SignupLoginStoreBase with _$SignupLoginStore;

abstract class _SignupLoginStoreBase with Store {
  @observable
  bool isVisible = true;

  @action
  void isChanged() {
    isVisible = !isVisible;
  }
}
