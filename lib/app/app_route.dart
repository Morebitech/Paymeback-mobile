import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/contact-book/add_customer_from_contactbook.dart';
import 'package:paymeback/ui/add-customer-from-contactbook/finilization-contactbook/finilization_contactbook.dart.dart';
import 'package:paymeback/ui/add-customer-manually/add_customer_manually.dart';
import 'package:paymeback/ui/contact-us/contact_us.dart';
import 'package:paymeback/ui/home/home_tabs.dart';
import 'package:paymeback/ui/home/home_view.dart';
import 'package:paymeback/ui/notifications/notification.dart';
import 'package:paymeback/ui/settings/settings.dart';
import 'package:paymeback/ui/startUp-registration/phone-number-verification/phone_number_verification.dart';
import 'package:paymeback/ui/startUp-registration/selectlanguage/language_view.dart';
import 'package:paymeback/ui/startUp-registration/startup/startup_view.dart';
import 'package:paymeback/ui/startUp-registration/user-name-registration/user_name_registration.dart';
import 'package:paymeback/ui/startUp-registration/user-phone-number-registration/phone_number_registration_view.dart';
import 'package:paymeback/ui/transaction/transaction_view.dart';

const startupViewRoute = '/';
const homeView = '/home';
const homeTabs = '/homeTabs';
const notification = '/notification';
const phoneNumberRegistration = '/phoneNumberRegistration';
const language = '/language';
const phoneNumberVerification = '/phoneNumberVerification';
const userNameRegistraction = '/userNameRegistraction';
const addCustomerManually = '/AddCustomerManually';
const addCustomerFromContactBook = '/AddCustomerFromContactBook';
const contactBookFinilization = '/contactBookFinilization';
const setting = '/settings';
const transaction = '/transaction';
const contactUs = '/contactUs';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case startupViewRoute:
      return MaterialPageRoute(builder: (context) => StartupView());
    case homeView:
      return MaterialPageRoute(builder: (context) => HomeView());
    case homeTabs:
      return MaterialPageRoute(builder: (context) => HomeTabs());
    case phoneNumberRegistration:
      return MaterialPageRoute(builder: (context) => PhoneNumberRegistration());
    case language:
      return MaterialPageRoute(builder: (context) => Languages());
    case phoneNumberVerification:
      return MaterialPageRoute(builder: (context) => PhoneNumberVerification());
    case userNameRegistraction:
      return MaterialPageRoute(builder: (context) => UserNameRegistraction());
    case addCustomerManually:
      return MaterialPageRoute(builder: (context) => AddCustomerManually());
    case addCustomerFromContactBook:
      return MaterialPageRoute(
          builder: (context) => AddContactFromContactBook());
    case contactBookFinilization:
      return MaterialPageRoute(builder: (context) => ContactBookFinilization());
    case transaction:
      return MaterialPageRoute(builder: (context) => Transaction());
    case notification:
      return MaterialPageRoute(builder: (context) => NotificationView());
    case setting:
      return MaterialPageRoute(builder: (context) => Settings());
    case contactUs:
      return MaterialPageRoute(builder: (context) => ContactUs());
    default:
      throw ("this route name does not exit");
  }
}
