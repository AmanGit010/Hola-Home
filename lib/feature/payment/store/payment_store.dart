import 'package:mobx/mobx.dart';
part 'payment_store.g.dart';

class PaymentStore = _PaymentStoreBase with _$PaymentStore;

abstract class _PaymentStoreBase with Store {}
