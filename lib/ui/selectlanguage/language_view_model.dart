import 'package:stacked/stacked.dart';

class LanguageViewModel extends BaseViewModel {
  String _language1 = "Select Language";
  List<String> _languages = [
    "English",
    "Frensh",
    "Shwahili",
  ];
  List<String> get languages => _languages;
  String get language1 => _language1;
}
