import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfileService {
  final String apiUrl = 'https://ib.jamalmoallart.com/api/v2/profile';

  Future<Map<String, dynamic>> fetchProfile(String token) async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load profile. Status code: ${response.statusCode}');
    }
  }
}
