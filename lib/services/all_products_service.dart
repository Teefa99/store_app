import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/helpers/api.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    Response response =
        await Api(Dio()).get('https://fakestoreapi.com/products');
    List<dynamic> products = response.data;
    List<ProductModel> allProducts = [];
    for (var product in products) {
      allProducts.add(ProductModel.fromjson(product));
    }
    return allProducts;
  }
}
