import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/contact-book/add_customer_from_contactbook.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/finilization-contactbook/finilization_contactbook.dart.dart';
import 'package:paymeback/ui/add-customer-manually/add_customer_manually.dart';
import 'package:paymeback/ui/first_tracation/first_transaction_view.dart';
import 'package:paymeback/ui/home/home_view.dart';
import 'package:paymeback/ui/startUp-registration/finaldetailsPage/final_detail_page.dart';
import 'package:paymeback/ui/startUp-registration/selectlanguage/language_view.dart';
import 'package:paymeback/ui/startUp-registration/startup/startup_view.dart';
import 'package:paymeback/ui/startUp-registration/user-registration/phone_number_registration_view.dart';
import 'package:paymeback/ui/startUp-registration/verification/verification_view.dart';

const startupViewRoute = '/';
const homeView = '/home';
const phoneRegistration = '/phoneRegistration';
const language = '/language';
const verification = '/confirmation';
const finalDetailPage = '/finalDetail';
const addCustomerManually = '/AddCustomerManually';
const addCustomerFromContactBook = '/AddCustomerFromContactBook';
const contactBookFinilization = '/contactBookFinilization';
const firstTransaction = '/firstTransaction';
const wearsmute = '/wearsmute';

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
    case verification:
      return MaterialPageRoute(builder: (context) => Verification());
    case finalDetailPage:
      return MaterialPageRoute(builder: (context) => FinalDetailPage());
    case addCustomerManually:
      return MaterialPageRoute(builder: (context) => AddCustomerManually());
    case addCustomerFromContactBook:
      return MaterialPageRoute(
          builder: (context) => AddContactFromContactBook());
    case contactBookFinilization:
      return MaterialPageRoute(builder: (context) => ContactBookFinilization());
    case firstTransaction:
      return MaterialPageRoute(builder: (context) => FirstTransaction());
    case wearsmute:
      return MaterialPageRoute(builder: (context) => HomeView());
    default:
      throw ("this route name does not exit");
  }
}

class DetailConfirmation {}
