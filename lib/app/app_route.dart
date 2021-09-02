import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:paymeback/ui/addcustomer_debtor_creditor/customer_register_view.dart';
import 'package:paymeback/ui/addcustomers/add_customer_view.dart';
import 'package:paymeback/ui/detailsPage/phone_number_registration_view.dart';
import 'package:paymeback/ui/detailsconfirmationPage/cofirmation_view.dart';
import 'package:paymeback/ui/finaldetailsPage/final_detail_page.dart';
import 'package:paymeback/ui/home/home_view.dart';
import 'package:paymeback/ui/selectlanguage/language_view.dart';
import 'package:paymeback/ui/startup/startup_view.dart';

const startupViewRoute = '/';
const homeView = '/home';
const phoneRegistration = '/phoneRegistration';
const language = '/language';
const detailConfirmation = '/confirmation';
const finalDetailPage = '/finalDetail';
const addCustomer = '/addCustomer';
const registerCustomer = '/registerCustomer';
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case startupViewRoute:
      return MaterialPageRoute(builder: (context) => StartupView());
    case homeView:
      return MaterialPageRoute(builder: (context) => HomeView());
    case phoneRegistration:
      return MaterialPageRoute(builder: (context) => PhoneNumberRegistration());
    case language:
      return MaterialPageRoute(builder: (context) => Languages());
    case detailConfirmation:
      return MaterialPageRoute(builder: (context) => DetailConfirmation());
    case finalDetailPage:
      return MaterialPageRoute(builder: (context) => FinalDetailPage());
    case addCustomer:
      return MaterialPageRoute(builder: (context) => AddCustomer());
    case registerCustomer:
      return MaterialPageRoute(builder: (context) => CustomerRegister());
    default:
      throw ("this route name does not exit");
  }
}
