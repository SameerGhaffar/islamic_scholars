import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_scholars/screens/admin/bookings.dart';
import 'package:islamic_scholars/screens/admin/complains_2.dart';
import 'package:islamic_scholars/screens/admin/admin.dart';
import 'package:islamic_scholars/screens/admin/home/appointment_2.dart';
import 'package:islamic_scholars/screens/admin/manage_users/manage_users.dart';
import 'package:islamic_scholars/screens/admin/package_add.dart';
import 'package:islamic_scholars/screens/admin/user_info_screen.dart';
import 'package:islamic_scholars/screens/auth/forget_password.dart';
import 'package:islamic_scholars/screens/auth/login.dart';
import 'package:islamic_scholars/screens/auth/reset_password.dart';
import 'package:islamic_scholars/screens/auth/signup.dart';
import 'package:islamic_scholars/screens/admin/appointmnets.dart';
import 'package:islamic_scholars/screens/calling_screen.dart';
import 'package:islamic_scholars/screens/cutomer/profile/complains/report_issue.dart';

import 'screens/admin/complains.dart';
import 'screens/admin/home/admin_home.dart';
import 'screens/package_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        // textTheme: GoogleFonts.interTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        textTheme: GoogleFonts.interTextTheme(
        )
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home:  LoginScreen(),
      //home:  ResetPasswordScreen(),
      // home:  PackagesScreenAdd(),
      // home:  AdminScreen(),
      // home:  ManageUsersScreen(),
      //home:  UserInfoScreen(),
      //home:  BookingsScreen(),
      // home:  AppointmentScreen(),
      // home:  ComplainsScreen(),
      // home:  ComplainsScreen2(),
      // home:  const AdminHomeScreen(),
      // home:  AdminAppointmentScreen2(),
      // home:  CallingScreen(),
      // home:  CustomerHomeScreen(),
      // home:  PackagesScreen(),
      // home:  ReportIssueScreen(),
     // home:  ReportIssueScreen2(),

    );
  }
}
