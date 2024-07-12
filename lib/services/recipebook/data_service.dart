import 'package:myapp/models/recipebook/recipe.dart';
import 'package:myapp/services/recipebook/http_service.dart';

class DataService {
  static final DataService _singleton = DataService._internal();

  final HTTPService _httpService = HTTPService();

  factory DataService() {
    return _singleton;
  }
  DataService._internal();

  Future<List<Recipe>?> getRecipes(String filter) async {
    String path = "recipes/";
    if (filter.isNotEmpty) {
      path += "meal-type/$filter";
    }
    var respone = await _httpService.get(path);
    if (respone?.statusCode == 200 && respone?.data != null) {
      List data = respone!.data["recipes"];
      List<Recipe> recipes = data.map((e) => Recipe.fromJson(e)).toList();
      return recipes;
    }
  }
}
