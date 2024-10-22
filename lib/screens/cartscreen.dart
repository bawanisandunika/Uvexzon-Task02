import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/widgets/cart.dart'; // Ensure this import is correct

class CartScreen extends StatefulWidget {
  final List<Map<String, dynamic>> selectedItems;

  const CartScreen({Key? key, required this.selectedItems}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    double total = 0;
    for (var item in widget.selectedItems) {
      total += item['price'] * item['quantity'];
    }
    setState(() {
      totalPrice = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          children: [
            Expanded(
              child: _buildCartItems(),
            ),
            _buildCheckoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItems() {
    return ListView.builder(
      itemCount: widget.selectedItems.length,
      itemBuilder: (context, index) {
        final item = widget.selectedItems[index];
        return Cart(
          item: item,
          onQuantityChanged: (newQuantity) {
            setState(() {
              widget.selectedItems[index]['quantity'] = newQuantity;
              _calculateTotalPrice();
            });
          },
          onRemove: () {
            setState(() {
              widget.selectedItems.removeAt(index);
              _calculateTotalPrice();
            });
          },
        );
      },
    );
  }

  Widget _buildCheckoutButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF6342E8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56.r),
          ),
        ),
        onPressed: () {
          // Navigate to the checkout screen or perform the checkout action
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart, color: Colors.white),
            SizedBox(width: 10.sp),
            Text(
              'GO TO CHECKOUT',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 20.sp),
            Text(
              '\$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
