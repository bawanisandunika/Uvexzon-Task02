import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/cartscreen.dart';
// ignore: unused_import
import 'package:geeta_app/widgets/resourcecard.dart';

class Buyscreen extends StatefulWidget {
  const Buyscreen({super.key});

  @override
  State<Buyscreen> createState() => _BuyscreenState();
}

class _BuyscreenState extends State<Buyscreen> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4FB),
      body: Stack(
        children: [
          AppBar(
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
            surfaceTintColor: const Color(0xFFF1F4FB),
            backgroundColor: const Color(0xFFF1F4FB),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.sp),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.favorite_outline),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: SizedBox(
                    width: 158.sp,
                    height: 225.sp,
                    child: Image.asset(
                      "assets/loading.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 280.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r),
              ),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 40.sp, right: 40.sp, bottom: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 10.sp),
                  Text(
                    "Geeta Mens",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Purple Hoodie ",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 24.sp,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$40.',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Lato",
                                color: Colors.black),
                          ),
                          Text(
                            "00",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "Lato",
                                color: Colors.black),
                          ),
                          Text(" USD",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: "Lato",
                                  color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(children: [
                          Container(
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Text(
                            "1",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 16.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Container(
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.file_upload_outlined),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.sp),
                  Text.rich(TextSpan(
                      text: "DESCRIPTION ",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                      children: [
                        TextSpan(text: "\n"),
                        TextSpan(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...detail",
                          style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFFA1A1A1)),
                        ),
                      ])),
                  SizedBox(height: 20.sp),
                  Text(
                    "SIZE",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSizes(index: 0, size: "S"),
                      _buildSizes(index: 1, size: "M"),
                      _buildSizes(index: 2, size: "L"),
                      _buildSizes(index: 3, size: "XL"),
                      _buildSizes(index: 4, size: "XXL"),
                    ],
                  ),
                  SizedBox(height: 20.sp),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(
                            selectedItems: [],
                          ),
                        ),
                      );
                    },
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
                          Icon(Icons.card_travel_outlined,
                              color: Colors.white, size: 20.sp),
                          SizedBox(width: 10.sp),
                          Text(
                            "ADD TO CART",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize: 11.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizes({required int index, required String size}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = index;
        });
      },
      child: Container(
        height: 48.sp,
        width: 48.sp,
        decoration: BoxDecoration(
          color: isSelected == index
              ? const Color(0xFF6342E8)
              : const Color(0xFFF1F4FB),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: isSelected == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
