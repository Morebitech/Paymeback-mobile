import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class FirstTransactionViewModel extends BaseViewModel {
  String _name = "Elie";
  String _phoneNumber = "098765432";
  String _profileImage = "assets/images/image.png";
  String _lockImage = "assets/images/lock.png";
  String _text1 = "MyCustomers is 100% safe and secure, only";
  String _text2 = "transaction";
  String _text3 = "COLLECTING";
  String _text4 = "GIVING";

  String get image => _profileImage;
  String get lockImage => _lockImage;
  String get name => _name;
  String get phoneNumber => _phoneNumber;
  String get text1 => _text1;
  String get text2 => _text2;
  String get text3 => _text3;
  String get text4 => _text4;
}
