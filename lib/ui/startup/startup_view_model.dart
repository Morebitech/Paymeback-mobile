import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  String _text1 = 'Don\'t let your Debts get you Depth';
  String _text2 = 'Track Your Debts';
  String _text3 = 'Market Your Business';
  String _text4 = 'manage Your Business';
  String _imagePath = "assets/images/splash.png";
  String _backGroundImagePath = "assets/images/background.png";

  String get title1 => _text1;
  String get title2 => _text2;
  String get title3 => _text3;
  String get title4 => _text4;
  String get imagePath => _imagePath;
  String get backGroundImagePath => _backGroundImagePath;
}
