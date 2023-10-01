import 'package:dio/dio.dart';
import 'package:movide_swagger_dio/core/constants.dart';
import 'package:movide_swagger_dio/core/server_erro.dart';
import 'package:movide_swagger_dio/features/movies/data/model/get_all_response.dart';

class MovieRepository {
  final dio = Dio()
    ..options = BaseOptions(
      headers: {"X-API-KEY": "5GDFGXB-SF0M6CG-QDBXQYX-YD91AWD"},
      contentType: 'application/json',
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(
        seconds: 300,
      ),
    )
    ..interceptors.addAll([
      LogInterceptor(
        responseBody: true,
        requestBody: true,
      ),
    ]);

  Future<GetAllMoviesResponse> getAllMovie() async {
    try {
      final response =
          await dio.get('https://api.kinopoisk.dev/v1.3/movie');
      print(response.data);
      (response.data as Map).forEach((key, value) {print(key);});
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data =  GetAllMoviesResponse.fromJson(response.data);
        print('adj laskdsdf secon');
        print(data.docs?.first.videos?.trailers?.first.name);
        print(data.docs?.first.videos?.trailers?.first.url);

        return GetAllMoviesResponse.fromJson(response.data);
      }
      throw ServerException.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException.fromJson(e.response?.data);
    } on FormatException {
      throw ServerException(message: 'Erroor!!!');
    }
  }
}
