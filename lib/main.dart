import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_product_view.dart';

void main() async {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => HomeView(),
        UpdateProductView.id: (context) => UpdateProductView()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
