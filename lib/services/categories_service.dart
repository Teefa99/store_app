import 'package:dio/dio.dart';
import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getProductsByCategory(String categoryName) async {
    Response response = await Api(Dio())
        .get('https://fakestoreapi.com/products/category/$categoryName');
    {
      List<dynamic> products = response.data;
      List<ProductModel> CategoryProducts = [];
      for (var product in products) {
        CategoryProducts.add(ProductModel.fromjson(product));
      }
      return CategoryProducts;
    }
  }
}
