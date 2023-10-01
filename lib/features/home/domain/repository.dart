import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movide_swagger_dio/core/constants.dart';
import 'package:movide_swagger_dio/core/server_erro.dart';
import 'package:movide_swagger_dio/features/home/data/models/data_model.dart';
import 'package:movide_swagger_dio/features/movies/data/model/get_all_response.dart';

class NewRepository {
  final dio = Dio()
    ..options = BaseOptions(
      headers: {'X-API-KEY': '94H15QJ-EXR4Q8Z-QKTM506-99999'},
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(
        seconds: 300,
      ),
    )
    ..interceptors
        .addAll([LogInterceptor(responseBody: true, requestBody: true)]);

  Future<GetMovieResponse> getMovies() async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=898189a4d27b4766a9054d9a3483454c');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return GetMovieResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Erroor!!!');
    }
  }
}
