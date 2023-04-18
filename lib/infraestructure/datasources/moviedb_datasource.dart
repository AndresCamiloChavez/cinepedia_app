import 'package:cinepedia_app/config/constanst/environment.dart';
import 'package:cinepedia_app/domain/entities/movie.dart';
import 'package:dio/dio.dart';

import '../../domain/datasources/movies_datasource.dart';

class MoviesdbDatasource extends MoviesDatacource {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.movieDbKey,
    'language': 'es-CO'
  }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 0}) async {
    final response = await dio.get('/movie/now_playing');
    final List<Movie> movies = [];
    
    return movies;
  }
}
