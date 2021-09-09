import 'package:stacked/stacked.dart';

class PhoneNumberRegistrationModel extends BaseViewModel {
  String _text1 = 'Please, Enter your Phone number';
  String _text2 = 'Or Continue with your social account';
  String _textphone = 'Phone number';

  String _imagePath = "assets/images/splash.png";
  String _googleImagePath = "assets/images/google.png";
  String _facebookImagePath = "assets/images/facebook.png";
  String _cloudImagePath = "assets/images/cloud.png";
  String _backGroundImagePath = "assets/images/image.png";

  String get title1 => _text1;
  String get title2 => _text2;
  String get titlephone => _textphone;
  String get imagePath => _imagePath;
  String get googleImagePath => _googleImagePath;
  String get facebookImagePath => _facebookImagePath;
  String get cloudImagePath => _cloudImagePath;
  String get backGroundImagePath => _backGroundImagePath;
}
