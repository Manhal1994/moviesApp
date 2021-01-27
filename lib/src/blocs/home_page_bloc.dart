import 'package:injectable/injectable.dart';
import 'package:mymovies/src/blocs/base_bloc.dart';
import 'package:mymovies/src/data/api_response.dart';
import 'package:mymovies/src/data/dio_error_util.dart';
import 'package:mymovies/src/data/models/movie_response.dart';
import 'package:mymovies/src/data/repository.dart';
import 'package:mymovies/src/di/di.dart';
import 'package:rxdart/subjects.dart';
@injectable
class HomePageBloc extends BaseBloc{
  final Repository repository = getIt<Repository>();

  final fetcher = PublishSubject<ApiResponse<MoviesResponse>>();
  Stream<ApiResponse<MoviesResponse>> get  moviesLiveData =>fetcher.stream;

  HomePageBloc();
  fetchMovieList() async {
    fetcher.sink.add(ApiResponse.loading("Fetching popular movies"));
    try {
    MoviesResponse movies = await repository.getPopularMovies;
        fetcher.sink.add(ApiResponse.completed(movies));

    }
    catch(error,trace){
      print(trace);
        fetcher.sink.add(ApiResponse.error(DioErrorUtil.handleError(error)));

    }
    
  }
  @override
  dispose() {
    fetcher.close();
  
  }

}