import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  String? _username;

  bool get isAuthenticated => _isAuthenticated;
  String? get username => _username;

  Future<bool> login(String username, String password) async {
    try {
      // Demo mode: Allow login with test credentials
      if (username == 'mor_2314' && password == '83r5^_') {
        _isAuthenticated = true;
        _username = username;
        notifyListeners();
        return true;
      }
      
      // Also allow other demo logins
      if (username.isNotEmpty && password.isNotEmpty) {
        _isAuthenticated = true;
        _username = username;
        notifyListeners();
        return true;
      }
      
      return false;
    } catch (e) {
      print('Login error: $e');
      return false;
    }
  }

  void logout() {
    _isAuthenticated = false;
    _username = null;
    notifyListeners();
  }
}
