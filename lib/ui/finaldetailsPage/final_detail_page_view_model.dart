import 'package:stacked/stacked.dart';

class FinalViewModel extends BaseViewModel {
  String _text1 = "What's Your name";
  String _text2 = 'Enter Your Name';
  String _text3 = 'Finish';
  String _imagePath = "assets/images/heading.png";
  String _imagePath2 = "assets/images/arrow.png";
  String _backGroundImagePath = "assets/images/image.png";
  String get title1 => _text1;
  String get title2 => _text2;
  String get title3 => _text3;
  String get imagePath2 => _imagePath2;
  String get imagePath => _imagePath;
  String get backGroundImagePath => _backGroundImagePath;
}
