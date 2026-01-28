import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product_model.dart';
import 'mock_data.dart';

class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';
  static const int timeoutSeconds = 15;
  static const int maxRetries = 2;

  static Future<http.Response> _getWithRetry(String url) async {
    int retries = 0;
    while (retries <= maxRetries) {
      try {
        final response = await http.get(Uri.parse(url)).timeout(
          Duration(seconds: timeoutSeconds),
          onTimeout: () => throw Exception('API timeout'),
        );
        return response;
      } catch (e) {
        retries++;
        if (retries > maxRetries) rethrow;
        print('Retry attempt $retries for $url');
        await Future.delayed(Duration(seconds: retries));
      }
    }
    throw Exception('Max retries exceeded');
  }

  static Future<List<Product>> getProducts() async {
    try {
      final response = await _getWithRetry('$baseUrl/products');
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => Product.fromJson(json)).toList();
      }
      throw Exception('Failed to load products: ${response.statusCode}');
    } catch (e) {
      print('API Error: $e, using mock data');
      return MockData.mockProducts;
    }
  }

  static Future<List<String>> getCategories() async {
    try {
      final response = await _getWithRetry('$baseUrl/products/categories');
      if (response.statusCode == 200) {
        return List<String>.from(json.decode(response.body));
      }
      throw Exception('Failed to load categories: ${response.statusCode}');
    } catch (e) {
      print('API Error: $e, using mock categories');
      return MockData.mockCategories;
    }
  }

  static Future<List<Product>> getProductsByCategory(String category) async {
    try {
      final response = await _getWithRetry('$baseUrl/products/category/$category');
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((json) => Product.fromJson(json)).toList();
      }
      throw Exception('Failed to load products: ${response.statusCode}');
    } catch (e) {
      print('API Error: $e, using mock data');
      return MockData.getProductsByCategory(category);
    }
  }
}