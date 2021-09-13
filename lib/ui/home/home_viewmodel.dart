import 'package:paymeback/ui/home/home_view.dart';
import 'package:paymeback/ui/profile/profile.dart';
import 'package:paymeback/ui/transaction/transaction_view.dart';
import 'package:stacked/stacked.dart';

class ContactModel {
  int id;
  String name;
  DateTime dueDate;
  int dayLeft;
  String imageUrl;
  double amount;

  ContactModel({
    required this.id,
    required this.amount,
    required this.dayLeft,
    required this.dueDate,
    required this.imageUrl,
    required this.name,
  });
}

class HomeViewModel extends BaseViewModel {
  List<String> _labels = [
    "Pay Me back",
    "All Customers",
    "Creditors",
    "Debtors",
    "Home",
    "My Transactions",
    "My Profile",
    "You are owing Customers"
  ];

  List<String> _creditorsLabels = [
    "You are owing Customers",
    "Ksh",
    "Search for a Creditor",
    "Add a new Creditor",
  ];

  List<String> _debtorsLabels = [
    "Customers are owing you",
    "Ksh",
    "Search for a debtor",
    "Add a new debtor",
  ];

  List<String> _allCustomersLabels = [
    "Customer list",
    "Search for a customer",
    "Add a new Customer",
  ];

  List<ContactModel> _allCustomerList = [
    ContactModel(
        id: 1,
        amount: 700,
        dayLeft: 2,
        dueDate: DateTime.now(),
        imageUrl: "assets/images/image.png",
        name: "Elie Bamunoba"),
    ContactModel(
        id: 2,
        amount: 900,
        dayLeft: 3,
        dueDate: DateTime.now(),
        imageUrl: "assets/images/background.png",
        name: "Isaac Bamunoba"),
  ];
  final List screens = [
    HomeView(),
    Transaction(),
    Profile(),
  ];

  int _indexBottom = 0;

  void updateBottomIndex(int index) {
    _indexBottom = index;
    notifyListeners();
  }

  int get indexBottom => _indexBottom;

  List<String> get labels => _labels;
  List<ContactModel> get customersList => _allCustomerList;
  List<String> get allCustomersLabels => _allCustomersLabels;
  List<String> get creditorLabels => _creditorsLabels;
  List<String> get debtorsLabels => _debtorsLabels;
}
