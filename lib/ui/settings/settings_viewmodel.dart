import 'package:stacked/stacked.dart';

class AddCustomerManuallyViewModel extends BaseViewModel {
  List<String> _toggleBarLabels = [
    'Debtor',
    'Creditor',
  ];
  int _index = 0;
  List<String> get toggleBarLabels => _toggleBarLabels;
  int get index => _index;

  void updateIdext(int ind) {
    _index = ind;
    notifyListeners();
  }
}
