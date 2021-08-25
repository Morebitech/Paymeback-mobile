import 'package:stacked/stacked.dart';

class DetailConfirmationModel extends BaseViewModel {
  String _text1 = 'PASTE FROM SMS';
  String _text2 = '0349';
  String _text3 = 'Please, enter 4-digit code we sent on your number as SMS';
  String _imagePath = "assets/images/splash.png";
  String _backGroundImagePath = "assets/images/image.png";

  String get title1 => _text1;
  String get title2 => _text2;
  String get title3 => _text3;
  String get imagePath => _imagePath;
  String get backGroundImagePath => _backGroundImagePath;
}
