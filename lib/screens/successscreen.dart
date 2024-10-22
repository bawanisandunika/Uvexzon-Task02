// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/homescreen.dart';

class Successscreen extends StatefulWidget {
  const Successscreen({super.key});

  @override
  State<Successscreen> createState() => _SuccessscreenState();
}

class _SuccessscreenState extends State<Successscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(
              left: 20.sp,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 40.sp, right: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Image.asset("assets/cover.png", height: 230.sp)),
              SizedBox(height: 20.sp),
              Text(
                "Congrats! Your Order has been placed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 24.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.sp),
              Text(
                "Your items has been placcd and is on it's way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFA1A1A1),
                ),
              ),
              SizedBox(height: 20.sp),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.sp),
                  child: Container(
                    height: 54.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6342E8),
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.car_crash, color: Colors.white, size: 20.sp),
                        SizedBox(width: 10.sp),
                        Text('TRACK ORDER',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 11.sp,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.sp),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homescreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.sp),
                  child: Container(
                    height: 54.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6342E8),
                      borderRadius: BorderRadius.circular(56.r),
                    ),
                    child: Center(
                      child: Text('CONTINUE SHOPPING',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 11.sp,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.sp),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homescreen(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.black, size: 20.sp),
                    SizedBox(width: 10.sp),
                    Text("Back to home",
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 14.sp,
                            color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(height: 20.sp),
            ],
          ),
        ));
  }
}
