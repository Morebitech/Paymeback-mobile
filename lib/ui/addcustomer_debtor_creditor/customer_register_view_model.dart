import 'package:stacked/stacked.dart';

class CustomerRegisterViewModel extends BaseViewModel {
  List<String> _toggleBarLables = [
    'Debtor',
    'Creditor',
  ];
  List<String> _usedLables = [
    'Customer Details',
    'Enter Name',
    'Mobile Number',
    'Enter Amount',
    'Select due date',
    'Description',
    'Next',
  ];
  int _index = 0;
  List<String> get lables => _usedLables;
  List<String> get toggleBarLables => _toggleBarLables;
  int get index => _index;

  void updateIdext(int ind) {
    _index = ind;
    notifyListeners();
  }
}
