import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity:
                0.1, // Adjust the value between 0.0 (completely transparent) and 1.0 (fully opaque)
            child: Image.asset(
              'assets/splash.jpeg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Geeta.",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 44.sp,
                      color: Colors.black)),
              SizedBox(height: 40.sp),
              Text(
                "Create your fashion\nin your own way",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 24.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40.sp),
              Text(
                  "Each men and women has their own style, Geeta\nhelp you to create your unique style.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.black)),
              SizedBox(height: 40.sp),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    // ignore: use_build_context_synchronously
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homescreen(),
                    ),
                  );
                },
                child: Container(
                  height: 54.sp,
                  width: 222.sp,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(56.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("LOG IN",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 11.sp,
                              color: Colors.black)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 120.sp, vertical: 15.sp),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          fontFamily: "Lato",
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.sp,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    // ignore: use_build_context_synchronously
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homescreen(),
                    ),
                  );
                },
                child: Container(
                  height: 54.sp,
                  width: 222.sp,
                  decoration: BoxDecoration(
                      color: const Color(0xFF6342E8),
                      borderRadius: BorderRadius.circular(56.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("REGISTER",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 11.sp,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
