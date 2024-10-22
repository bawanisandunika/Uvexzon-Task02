import 'dart:convert';
import 'package:flutter/services.dart'; // For loading local JSON file
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class ProductService {
  // Fetch data from local JSON file
  Future<List<Product>> fetchProductsFromLocal() async {
    try {
      final String response =
          await rootBundle.loadString('assets/products.json');
      final List<dynamic> data = json.decode(response) as List<dynamic>;
      return data.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load products from local: $e');
    }
  }

  // Fetch data from API
  Future<List<Product>> fetchProductsFromApi() async {
    try {
      final response =
          await http.get(Uri.parse('https://fakestoreapi.com/products/'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body) as List<dynamic>;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products from API');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
