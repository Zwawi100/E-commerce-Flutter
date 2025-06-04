import 'package:finalproject/Features/Register/Model/user_model.dart';

class RegisterResponseModel {
  final bool state;
  final String message;
  final dynamic data;
  RegisterResponseModel(
      {required this.state, required this.message, required this.data});
  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
        state: json["state"],
        message: json['message'],
        data: json['state'] ? UserData.fromJson(json["data"]) : json["data"]);
  }
}
