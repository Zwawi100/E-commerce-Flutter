import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:finalproject/Features/Home/Model/products_model.dart';

class ProductViewModel extends ChangeNotifier {
  bool isLoading = false;
  String? error;
  List<Product> products = []; // Store the list of products

  Future<void> fetchProducts() async {
    isLoading = true;
    error = null;
    notifyListeners();

    final uri = Uri.parse("https://ib.jamalmoallart.com/api/v1/all/products");
    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as List;
        products = decoded.map((json) => Product.fromJson(json)).toList();
        error = null;
      } else {
        error = "Failed to load products: ${response.statusCode}";
      }
    } catch (e) {
      error = "Error fetching products: ${e.toString()}";
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}