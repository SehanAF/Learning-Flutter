import 'package:dio/dio.dart';
import 'package:myapp/services/recipebook/consts.dart';

class HTTPService {
  static final HTTPService _singleton = HTTPService._internal();

  final _dio = Dio();

  factory HTTPService() {
    return _singleton;
  }

  HTTPService._internal() {
    setup();
  }

  Future<void> setup({String? bearerToken}) async {
    final headers = {
      'Content-Type': 'application/json',
      if (bearerToken != null) 'Authorization': 'Bearer $bearerToken',
    };
    if (bearerToken != null) {
      headers["Authorizaation"] = "Bearer $bearerToken";
    }

    final options = BaseOptions(
      baseUrl: API_BASE_URL,
      headers: headers,
      validateStatus: (status) {
        if (status == null) return false;
        return status < 500;
      },
    );
    _dio.options = options;
  }

  Future<Response?> post(String path, Map data) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
      );
      return response;
    } catch (e) {
      print("Error during POST request: $e");
    }
    return null;
  }

  Future<Response?> get(String path) async{
    try {
      final response = await _dio.get(
        path,
      );
      return response;
    } catch (e) {
      print("Error during GET request: $e");
    }
    return null;
  } 

}
