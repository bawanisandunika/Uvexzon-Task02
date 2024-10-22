import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/successscreen.dart';
// ignore: unused_import
import 'cardscreen.dart'; // Adjust the import based on your folder structure

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 20.sp),
            child: Text('Credit / Debit card',
                style: TextStyle(
                    fontFamily: "Lato", fontSize: 16.sp, color: Colors.black)),
          ),
        ),
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Card with adjusted size
                  SizedBox(
                    width: 280.w,
                    height: 170.h,
                    child: Image.asset(
                      "assets/Card.png", // Use the correct card image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Card content alignment and text fixes
                  Positioned(
                    top: 60.h,
                    child: Column(
                      children: [
                        // Card Number on card, non-bold
                        Text(
                          "5757 4747 5757 4747", // Same card number
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 19
                                .sp, // Adjusted size to look natural on smaller card
                            color: Colors.white,
                            fontWeight: FontWeight.w400, // Non-bold text
                          ),
                        ),
                        SizedBox(height: 20.h), // Adjust spacing
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Name on card, non-bold
                              Text(
                                "VARAT SINGH SHARMA",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400, // Normal weight
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                  width: 20
                                      .w), // Space between name and expiry date
                              // Expiry Date, non-bold
                              Text(
                                "07/21",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400, // Normal weight
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              // Camera Icon
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: const Color(0xFFA1A1A1),
                  size: 25.sp,
                ),
              ),
              SizedBox(height: 10.h),
              // Input fields for Name on card
              _inputTextField("Name on card", "Varat Singh Sharma"),
              SizedBox(height: 10.h),
              // Input fields for Card Number with correct icon
              _inputTextFieldWithIcon(
                "Card number",
                "4747 4747 4747 4747", // Placeholder card number
                Icons.credit_card, // Correct icon for card number field
              ),
              SizedBox(height: 10.h),
              // Expiry Date and CVC Row
              Row(
                children: [
                  Expanded(
                    child: _inputTextField("Expiry date", "07/21"),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: _inputTextFieldWithIcon(
                      "CVC",
                      "474", // Placeholder CVC
                      Icons.lock_outline, // Correct icon for CVC field
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              // Use This Card Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Successscreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Container(
                    height: 54.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6342E8), // Purple button color
                      borderRadius:
                          BorderRadius.circular(56.r), // Rounded button
                    ),
                    child: Center(
                      child: Text(
                        'USE THIS CARD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 11.sp, // Button text size
                          color: Colors.white,
                          fontWeight: FontWeight.bold, // Bold button text
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Input TextField Widget with Label and Placeholder text
  Widget _inputTextField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold, // Bold label text
          ),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.sp,
              color: const Color(0xFFA1A1A1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 10.w,
            ),
          ),
        ),
      ],
    );
  }

  // Input TextField Widget with Icon on the right side
  Widget _inputTextFieldWithIcon(String label, String hintText, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold, // Bold label text
          ),
        ),
        SizedBox(height: 5.h),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.sp,
              color: const Color(0xFFA1A1A1),
            ),
            suffixIcon: Icon(
              icon,
              color: const Color(0xFFA1A1A1),
              size: 18.sp,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xFFA1A1A1),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 10.w,
            ),
          ),
        ),
      ],
    );
  }
}
