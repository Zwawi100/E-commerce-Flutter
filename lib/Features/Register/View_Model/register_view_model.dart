import 'dart:convert';

import 'package:finalproject/Features/Login/View/login_screen.dart';
import 'package:finalproject/Features/Register/Model/register_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  String? selctedGender;

  bool isLoading = false;
  String? error;

  Future<void> register(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    isLoading = true;
    error = null;
    notifyListeners();

    final uri = Uri.parse("https://ib.jamalmoallart.com/api/v2/register");
    try {
      final response = await http.post(uri,
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            'first_name': firstName.text,
            'last_name': lastName.text,
            'phone': phone.text,
            'address': address.text,
            'email': email.text,
            'password': password.text,
          }));
      final decoded = await jsonDecode(response.body);
      final registerResponse = RegisterResponseModel.fromJson(decoded);

      if (registerResponse.state) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Successful register ${firstName.text}")));

        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(registerResponse.data)));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    isLoading = false;
    notifyListeners();
  }
  // @override
  // void dispose() {
  //   firstName.dispose();
  //   lastName.dispose();
  //   email.dispose();
  //   phone.dispose();
  //   address.dispose();
  //   password.dispose();
  //   confirmPassword.dispose();
  //   super.dispose();
  // }
}
