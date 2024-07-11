import 'package:myapp/models/recipebook/recipe.dart';
import 'package:myapp/services/recipebook/http_service.dart';

class DataService {
  static final DataService _singleton = DataService._internal();

  final HTTPService _httpService = HTTPService();

  factory DataService() {
    return _singleton;
  }
  DataService._internal();

  Future<List<Recipe>?> getRecipes() async {
    String path = "recipes/";
    var respone = await _httpService.get(path);
    if (respone?.statusCode == 200 && respone?.data != null) {
      print(respone!.data);
    }
  }
}
