import 'package:injectable/injectable.dart';
import 'package:mymovies/src/data/models/movie_response.dart';
import 'package:mymovies/src/data/remote/apis/movie_api.dart';
import 'package:mymovies/src/di/di.dart';

@injectable
class Repository{
  final _movieapi = getIt<MovieApi>();
  Future<MoviesResponse> get getPopularMovies => _movieapi.getPopular();
}