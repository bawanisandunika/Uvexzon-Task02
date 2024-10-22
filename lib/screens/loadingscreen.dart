import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/splashscreen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/loading.jpeg', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Geeta.",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 104.sp,
                        color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const Splashscreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 54.sp,
                    width: 222.sp,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(56.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("SHOP NOW",
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize: 14.sp,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 6.sp,
                      width: 6.sp,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    SizedBox(width: 2.sp),
                    Container(
                      height: 6.sp,
                      width: 6.sp,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    SizedBox(width: 2.sp),
                    Container(
                      height: 6.sp,
                      width: 30.sp,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.r)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
