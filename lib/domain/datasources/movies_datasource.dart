import 'package:cinepedia_app/domain/entities/movie.dart';

abstract class MoviesDatacource{
  Future<List<Movie>> getNowPlaying({int page = 0});
}