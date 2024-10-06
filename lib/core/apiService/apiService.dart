import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/';
  final Dio _dio;
  ApiService(this._dio);

  get({required String endPoints}) async {
    Response response = await _dio.get("$_baseUrl$endPoints");
    var data = response.data;
    return data;
  }
}
