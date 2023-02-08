import 'dart:convert';
import 'package:evalia/models/company.dart';
import 'package:evalia/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataProvider with ChangeNotifier {
  final String serverUrl = 'http://10.0.2.2:8081';
 

  List<Company> companies = [];

  late User user;

  
  

  

  Future<void> getCompanies() async {
    final url = '$serverUrl/api/companies';

    final response = await http.get(
      Uri.parse(url),
    );

    try {
      final companyData = json.decode(response.body) as List<dynamic>;

      if (companyData != null) {
        companies = [];
        companyData.forEach((element) {
          
          final company = Company.fromJson(element);
          companies.add(company);
        });
      }
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

  Future<bool> login(String email,String pass) async {
    bool result=false;
    final url = '$serverUrl/api/users/login';

    final response = await http.post(
      Uri.parse(url),body: {
        "email":email,"password":pass
      }
    );

    try {
      final loginData = json.decode(response.body) as List<dynamic>;

      if (loginData.isNotEmpty) {

        user = User.fromJson(loginData.first);
        result =true;
      }

     print(loginData);
    } catch (e) {
      print(e.toString());
    }
   return result;
  }

  Future<void> register(String email,String pass,String name,String phoneNumber,) async {
    final url = '$serverUrl/api/users';

    final response = await http.post(
      Uri.parse(url),body: {
        "email":email,"password":pass,"name":name,"phoneNumber":phoneNumber
      }
    );

    try {
      final registerData = json.decode(response.body) as Map<String,dynamic>;

     print(registerData);
    } catch (e) {
      print(e.toString());
    }
    
  }

}
