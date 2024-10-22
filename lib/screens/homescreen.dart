import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geeta_app/screens/cartscreen.dart';
import 'package:geeta_app/widgets/resourcecard.dart';
import 'package:geeta_app/services/product_service.dart'; // Import the ProductService
import 'package:geeta_app/models/product_model.dart'; // Import the Product model

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int isSelected = 0;
  bool isLoading = true;
  bool hasError = false;
  List<Product> products = []; // List to hold products

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      final productService = ProductService();
      // Uncomment the desired method to fetch data
      // products = await productService.fetchProductsFromLocal();
      products = await productService.fetchProductsFromApi();
      setState(() {
        isLoading = false; // Data loaded
      });
    } catch (error) {
      setState(() {
        hasError = true; // Error loading data
        isLoading = false;
      });
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 20.sp),
          child: Text(
            'Geeta.',
            style: TextStyle(
                fontFamily: "Lato", fontSize: 24.sp, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.sp),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(
                      selectedItems: [],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.card_travel_outlined),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40.sp, top: 20.sp, right: 40.sp),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color(0xFFA1A1A1),
                    width: 1.sp,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategory(index: 0, name: "Popular"),
                  _buildCategory(index: 1, name: "Mens"),
                  _buildCategory(index: 2, name: "Womens"),
                  _buildCategory(index: 3, name: "Sale"),
                ],
              ),
            ),
            SizedBox(height: 30.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FILTER & SORT",
                  style: TextStyle(
                      fontFamily: "Lato", fontSize: 14.sp, color: Colors.black),
                ),
                const Row(
                  children: [
                    Icon(Icons.grid_view),
                    Icon(Icons.square),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            isLoading
                ? Center(
                    child: CircularProgressIndicator()) // Show loading spinner
                : hasError
                    ? Center(
                        child: Text(
                            "Failed to load products")) // Show error message
                    : Expanded(child: _buildResources()), // Display products
          ],
        ),
      ),
    );
  }

  Widget _buildCategory({required int index, required String name}) =>
      GestureDetector(
        onTap: () {
          setState(() {
            isSelected = index;
          });
        },
        child: Stack(
          children: [
            SizedBox(
              height: 30.sp,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.sp),
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14.sp,
                    color: isSelected == index
                        ? const Color(0xFF6342E8)
                        : const Color(0xFFA1A1A1),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Container(
              height: 30.sp,
              width: 20.sp,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isSelected == index
                        ? const Color(0xFF6342E8)
                        : Colors.transparent,
                    width: 2.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildResources() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 15,
        childAspectRatio: (172.sp / 280.sp),
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ResourceCard(
            product: products[index]); // Pass the product to ResourceCard
      },
    );
  }
}
