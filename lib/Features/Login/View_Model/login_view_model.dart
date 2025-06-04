import 'dart:convert';
import 'package:finalproject/Features/Home/View/Home_Screen.dart';
import 'package:finalproject/Features/Login/Model/login_respone_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;
  String? error;

  Future<void> login(BuildContext context) async {
    isLoading = true;
    error = null;
    notifyListeners();

    final uri = Uri.parse("https://ib.jamalmoallart.com/api/v2/login");
    try {
      final response = await http.post(uri,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            'email': emailController.text,
            'password': passwordController.text
          }));
      if(response.statusCode == 200){
      final decoded = jsonDecode(response.body);
      final loginResponse = LoginResponeModel.fromJson(decoded);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', loginResponse.token);

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Seuccessfully")));
      Navigator.pushReplacementNamed(context, HomeScreen.routeName,
          arguments: {'token': loginResponse.token});
      }else{
        ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Wrong valid email or password")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    isLoading = false;
    notifyListeners();
  }
  
}
