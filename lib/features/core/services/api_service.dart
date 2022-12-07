import 'dart:convert';

import 'package:dio/dio.dart';

import '../services_locator.dart';

abstract class ApiService {
  Future<Map<String, dynamic>> getData(String url,
      Map<String, dynamic> queryParams);
}

class ApiServiceImpl implements ApiService {
  final Dio _dio = sl<Dio>();

  @override
  Future<Map<String, dynamic>> getData(String url,
      Map<String, dynamic> queryParams) async {
    final Response response = await _dio.get(url, queryParameters: queryParams);

    if(response.statusCode == 200){
      return response.data as Map<String, dynamic>;
    } else {
      throw Exception('Status code: ${response.statusCode}');
    }
  }

}