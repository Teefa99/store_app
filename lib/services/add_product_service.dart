import 'package:dio/dio.dart';
import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api(Dio()).post(
      'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category
      },
    );
    return ProductModel.fromjson(data);
  }
}
