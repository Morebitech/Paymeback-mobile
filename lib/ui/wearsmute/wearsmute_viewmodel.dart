import 'package:stacked/stacked.dart';

class WearsmuteViewModel extends BaseViewModel {
  List<String> _labels = [
    "Wearsmute",
    "All Customers",
    "Creditors",
    "Debtors",
    "Home",
    "Marketing",
    "your Company",
    "You are owing Customers"
  ];
  List<String> _creditorsLabels = [
    "You are owing Customers",
    "Ksh",
    "Search for a debtor",
    "Add a new debtor",
  ];

  int _indexBottom = 0;
  void updateBottomIndex(int index) {
    _indexBottom = index;
    notifyListeners();
  }

  int get indexBottom => _indexBottom;

  List<String> get labels => _labels;
  List<String> get creditorLabels => _creditorsLabels;
}
