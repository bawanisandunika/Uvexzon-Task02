import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/loadingscreen.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled:
        true, // Set this to 'false' if you don't want to show the device preview.
    builder: (context) => const MyApp(), // Wrap your app with DevicePreview.
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "GEETA_APP",
        useInheritedMediaQuery: true, // Important for DevicePreview.
        locale:
            DevicePreview.locale(context), // Add the locale for DevicePreview.
        builder: DevicePreview
            .appBuilder, // Wrap the builder with DevicePreview.appBuilder.
        home: const LoadingScreen(),
      ),
      designSize: const Size(412, 732),
    );
  }
}
