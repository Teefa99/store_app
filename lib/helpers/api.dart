import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Api {
  final Dio dio;

  Api(this.dio);

  Future<Response> get(String url, {@required String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response = await dio.get(
      url,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(String url,
      {@required dynamic body, @required String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response =
        await dio.post(url, data: body, options: Options(headers: headers));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode} with body ${jsonDecode(response.data)}');
    }
  }

  Future<dynamic> put(String url,
      {@required dynamic body, @required String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    Response response =
        await dio.post(url, data: body, options: Options(headers: headers));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is an error with status code ${response.statusCode} with body ${jsonDecode(response.data)}');
    }
  }
}
