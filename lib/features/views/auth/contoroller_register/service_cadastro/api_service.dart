import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://SEU-SERVIDOR.COM/api";

  // -------------------- CADASTRO --------------------
  static Future<Map<String, dynamic>> register(Map<String, dynamic> data) async {
    final url = Uri.parse("$baseUrl/register");

    final response = await http.post(
      url,
      body: jsonEncode(data),
      headers: {"Content-Type": "application/json"},
    );

    return jsonDecode(response.body);
  }

  // -------------------- LOGIN --------------------
  static Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse("$baseUrl/login");

    final response = await http.post(
      url,
      body: jsonEncode({"email": email, "password": password}),
      headers: {"Content-Type": "application/json"},
    );

    return jsonDecode(response.body);
  }
}
