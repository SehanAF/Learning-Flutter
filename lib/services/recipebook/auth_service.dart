import 'package:myapp/models/recipebook/user.dart';
import 'package:myapp/services/recipebook/http_service.dart';

class AuthService {
  static final AuthService _singleton = AuthService._internal();

  final _httpService = HTTPService();

  User? user;

  factory AuthService() {
    return _singleton;
  }

  AuthService._internal();

  Future<bool> login(String username, String password) async {
    try {
      var response = await _httpService.post('auth/login', {
        'username': username,
        'password': password,
      });

      if (response?.statusCode == 200 && response?.data != null) {
        user = User.fromJson(response!.data);
        HTTPService().setup(bearerToken: user!.token);
        return true;
      } else {
        print("Login failed with status: ${response?.statusCode}");
      }
    } catch (e) {
      print("Error during login: $e");
    }
    return false;
  }
}
