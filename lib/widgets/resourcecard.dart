// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/models/product_model.dart';
import 'package:geeta_app/screens/buyscreen.dart';
import 'package:geeta_app/screens/product_detail_screen.dart'
    as productDetail; // Alias added here

class ResourceCard extends StatelessWidget {
  final Product product;

  const ResourceCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => productDetail.ProductDetailScreen(
              // Use alias here
              product: product,
            ),
          ),
        );
      },
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Column(
          children: [
            // Product image
            Expanded(
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.sp),
            // Product name
            Text(
              product.name,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.sp),
            // Product price
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 14.sp,
                color: Color.fromARGB(255, 144, 150, 145),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
