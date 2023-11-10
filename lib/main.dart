import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islamic_scholars/screens/auth/forget_password.dart';
import 'package:islamic_scholars/screens/auth/login.dart';
import 'package:islamic_scholars/screens/auth/reset_password.dart';
import 'package:islamic_scholars/screens/auth/signup.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),

);
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const LoginScreen(),
    );
  }
}