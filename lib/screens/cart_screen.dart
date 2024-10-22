import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/models/product_model.dart';
import 'package:geeta_app/screens/cardscreen.dart'; // Your checkout screen

class CartScreen extends StatefulWidget {
  final List<Product> cartItems;

  const CartScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalAmount = _calculateTotal();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Cart",
          style: TextStyle(color: Colors.white), // "Your Cart" in white
        ),
        backgroundColor: Colors.purple[700],
      ),
      body: widget.cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty."))
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final product = widget.cartItems[index];
                return Card(
                  margin: EdgeInsets.all(10.sp),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Product Image
                        Image.network(product.imageUrl, width: 50),
                        // Product Details
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name,
                                style: TextStyle(fontSize: 16.sp)),
                            Text('\$${product.price.toStringAsFixed(2)}',
                                style: const TextStyle(color: Colors.grey)),
                          ],
                        ),
                        // Quantity Adjustment
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (product.quantity > 1) {
                                    product.quantity--;
                                  }
                                });
                              },
                            ),
                            Text(product.quantity.toString(),
                                style: TextStyle(fontSize: 16.sp)),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  product.quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                        // Delete Button
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              // Logic to remove item from cart
                              widget.cartItems.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.sp),
        child: ElevatedButton.icon(
          onPressed: () {
            // Navigate to checkout screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardScreen(), // Navigate to CardScreen
              ),
            );
          },
          icon: const Icon(Icons.arrow_forward,
              color: Colors.white), // Arrow icon
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "GO TO CHECKOUT",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.sp,
                  color: Colors.white, // White text
                ),
              ),
              Text(
                "\$${totalAmount.toStringAsFixed(2)}", // Display total amount
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 14.sp,
                  color: Colors.white, // White text for the total amount
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple[700], // Purple background
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
          ),
        ),
      ),
    );
  }

  double _calculateTotal() {
    double total = 0.0;
    for (var item in widget.cartItems) {
      total += item.price * item.quantity; // Calculate total price
    }
    return total;
  }
}
