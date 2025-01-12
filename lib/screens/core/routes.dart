import 'package:flight_booking_app/screens/account/account_screen.dart';
import 'package:flight_booking_app/screens/home/booking/discover_page.dart';
import 'package:flight_booking_app/screens/home/booking/flights_list_screen.dart';
import 'package:flight_booking_app/screens/home/bookingdetails/booking_detais_screen.dart';
import 'package:flight_booking_app/screens/home/bookingdetails/contact_person_details_page.dart';
import 'package:flight_booking_app/screens/home/bookingdetails/passenger_info_screen.dart';
import 'package:flight_booking_app/screens/home/bookingdetails/passenger_seat_screen.dart';
import 'package:flight_booking_app/screens/main_route_page.dart';
import 'package:flight_booking_app/screens/registration/singin/login_screen.dart';
import 'package:flight_booking_app/screens/registration/singin/password_screen.dart';
import 'package:flight_booking_app/screens/registration/singin/signin_screen.dart';
import 'package:flight_booking_app/screens/settings/settings_page.dart';
import 'package:flight_booking_app/screens/transaction/order_confirmed_screen.dart';
import 'package:flight_booking_app/screens/transaction/passcode_screen.dart';
import 'package:flight_booking_app/screens/transaction/transaction_details_screen.dart';
import 'package:flight_booking_app/screens/transaction/transaction_methods_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const signup = '/signup';
  static const home = '/home';
  static const login = '/login';
  static const password = '/password';
  static const flightList = '/flightList';
  static const discoverPage = '/discoverPage';
  static const bookingDetails = '/bookingDetails';
  static const mainRoutePage = '/mainRoutePage';
  static const contactPersonDetails = '/contactPersonDetails';
  static const passengerInfo = '/passengerInfo';
  static const passengerSeat = '/passengerSeat';
  static const orderConfirmed = '/orderConfirmed';
  static const transaction = '/transaction';
  static const account = '/account';
  static const passcode = '/passcode';
  static const transactionDetails = '/transactionDetails';
  static const settings = '/settings';
}

List<GetPage> getPages = [
  GetPage(name: Routes.signup, page: () => const SigninScreen()),
  GetPage(name: Routes.home, page: () => const DiscoverPage()),
  GetPage(name: Routes.login, page: () => const LoginScreen()),
  GetPage(name: Routes.flightList, page: () => const FlightsListScreen()),
  GetPage(name: Routes.discoverPage, page: () => const DiscoverPage()),
  GetPage(name: Routes.bookingDetails, page: () => const BookingDetaisScreen()),
  GetPage(name: Routes.mainRoutePage, page: () => const MainPage()),
  GetPage(name: Routes.passengerSeat, page: () => SeatSelectionScreen()),
  GetPage(name: Routes.passcode, page: () => PasscodeScreen()),
  GetPage(
      name: Routes.transactionDetails, page: () => TransactionDetailsScreen()),
  GetPage(name: Routes.orderConfirmed, page: () => OrderConfirmedScreen()),
  GetPage(name: Routes.settings, page: () => SettingsPage()),
  GetPage(
      name: Routes.contactPersonDetails,
      page: () => const ContactPersonDetailsPage()),
  GetPage(name: Routes.passengerInfo, page: () => const PassengerInfoScreen()),
  GetPage(
      name: Routes.transaction, page: () => const TransactionMethodsScreen()),
  GetPage(name: Routes.account, page: () => const AccountPage()),
  GetPage(name: Routes.password, page: () => PasswordPage(email: '')),
];

class OrderConfirmedPage {}
