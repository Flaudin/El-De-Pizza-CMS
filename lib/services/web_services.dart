import 'dart:convert';
import 'package:eldepizzacms/models/pizza/pizza_models.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const baseUrl = 'http://localhost:8080';

  // Get all pizzas
  static Future<List<Pizza>> fetchPizzas() async {
    final response = await http.get(Uri.parse('$baseUrl/pizzas'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData.map<Pizza>((data) => Pizza.fromJson(data).toString());
    } else {
      throw Exception('Failed to load pizzas');
    }
  }
}
