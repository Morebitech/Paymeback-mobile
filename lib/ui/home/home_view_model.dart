import 'package:paymeback/ui/MarketingPage/marketing_view.dart';
import 'package:paymeback/ui/home/home_view.dart';
import 'package:paymeback/ui/yourcompany/yourcompany_view.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Trust us to help you track of your debts and debtors';
  String get title => _title;
  String _btnTitle = 'Add a Customer and get started';
  String get btnTitle => _btnTitle;

  List<Map<String, Object>> _selectedPage = [
    {'page': HomeView(), 'title': "Home"},
    {'page': MarketingView(), 'title': "Marketing"},
    {'page': YourCompanyView(), 'title': "Your Company"},
  ];
  List<Map<String, Object>> get selectedPages => _selectedPage;
}
