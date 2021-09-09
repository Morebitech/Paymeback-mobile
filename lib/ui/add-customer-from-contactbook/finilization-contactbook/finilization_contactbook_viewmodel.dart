import 'package:stacked/stacked.dart';

class ContactBookFinilizationViewModel extends BaseViewModel {
  List<String> _labels = [
    'Add a Customer',
    'Enter Amount',
    'Select due date',
    'Description',
    'Save',
  ];

  List<String> get labels => _labels;
}
