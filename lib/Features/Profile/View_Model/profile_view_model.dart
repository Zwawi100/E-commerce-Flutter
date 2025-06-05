import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Model/profile_model.dart';
import 'profile_service.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileModel? profile;
  bool isLoading = false;
  String? error;

  final ProfileService _service = ProfileService();

  Future<void> loadProfile() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token') ?? '';

      if (token.isEmpty) {
        throw Exception('Token not found');
      }

      final data = await _service.fetchProfile(token);
      profile = ProfileModel.fromJson(data['data']);
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
