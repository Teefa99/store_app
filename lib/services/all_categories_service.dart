import 'package:dio/dio.dart';
import 'package:store_app/helpers/api.dart';

class AllCategoriesService {
  Future<List> getAllCategories() async {
    Response response =
        await Api(Dio()).get('https://fakestoreapi.com/products/categories');
    List<dynamic> categories = response.data;
    return categories;
  }
}
