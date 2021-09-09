import 'package:contacts_service/contacts_service.dart';
import 'package:stacked/stacked.dart';

class AddCustomerFromContactBookViewModel extends BaseViewModel {
  List<String> _labels = [
    "Add Contact",
    "Search Contact",
    "Cancel",
    "Next",
  ];
  List<String> _toggleBarLabels = [
    'Debtor',
    'Creditor',
  ];
  List<Contact> _contacts = [];

  Future<void> getAllContact() async {
    List<Contact> _cont = (await ContactsService.getContacts()).toList();
    _contacts = _cont;
    notifyListeners();
  }

  int _index = 0;
  int get index => _index;
  void updateIdext(int ind) {
    _index = ind;
    notifyListeners();
  }

  List<String> get labels => _labels;
  List<Contact> get contacts => _contacts;
  List<String> get toggleBarLabels => _toggleBarLabels;
}
