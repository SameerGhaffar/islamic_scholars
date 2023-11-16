import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_scholars/screens/admin/manage_users/manage_users.dart';
import 'package:islamic_scholars/screens/admin/package_add.dart';
import 'package:islamic_scholars/screens/admin/user_info_screen.dart';
import 'package:islamic_scholars/screens/auth/forget_password.dart';
import 'package:islamic_scholars/screens/auth/login.dart';
import 'package:islamic_scholars/screens/auth/reset_password.dart';
import 'package:islamic_scholars/screens/auth/signup.dart';

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
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home:  UserInfoScreen(),
      //home: SignupScreen(),
    );
  }
}
