import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mymovies/src/data/models/movie_response.dart';
import 'package:mymovies/src/data/remote/constants/endpoints.dart';
import 'package:mymovies/src/data/remote/dio_client.dart';
@injectable

class MovieApi{
  final Endpoints endpoints = Endpoints();
  DioClient _dioClient = DioClient();

  MovieApi();
  Future<MoviesResponse> getPopular() async {
      final res = await _dioClient.get(Endpoints.getPopular,options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status <= 500;
            },
          ),);
      return MoviesResponse.fromJson(res);
    
   
  }
}