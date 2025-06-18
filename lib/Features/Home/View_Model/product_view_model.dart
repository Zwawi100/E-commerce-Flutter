import 'dart:convert';
import 'package:finalproject/Features/Home/Model/products_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductViewModel extends ChangeNotifier {
  bool isLoading = false;
  String? error;
  List<ProductsModel> products = [];

  Future<void> loadingProducts() async {
  isLoading = true;
  error = null;
  notifyListeners();

  final url = Uri.parse("https://ib.jamalmoallart.com/api/v1/all/products");
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> decoded = json.decode(response.body);
      products = decoded.map((e) => ProductsModel.fromJson(e)).toList();
    } else {
      error = "Server is down right now!";
    }
  } catch (e) {
    error = e.toString();
  } finally {
    isLoading = false;
    notifyListeners();
  }
}
}
