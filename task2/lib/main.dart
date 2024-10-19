import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
// ignore: unused_import
import './screens/welcome_screen.dart'; // Import the WelcomeScreen
import './screens/login_screen.dart'; // Import the LoginScreen

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode, // Enable in debug mode, disable in release mode
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Required for device_preview to work
      locale: DevicePreview.locale(
          context), // Add locale support for device_preview
      builder:
          DevicePreview.appBuilder, // Wrap the app with device preview builder
      // ignore: prefer_const_constructors
      home: LoginScreen(), // Replace with your actual home screen
    );
  }
}
