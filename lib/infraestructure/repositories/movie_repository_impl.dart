import 'package:cinepedia_app/domain/entities/movie.dart';
import 'package:cinepedia_app/domain/respositories/movies_repository.dart';
import 'package:cinepedia_app/infraestructure/datasources/moviedb_datasource.dart';

class MovieRepositoryImpl implements MoviesRepository{

  final MoviesdbDatasource datasource;

  MovieRepositoryImpl(this.datasource);
  
  @override
  Future<List<Movie>> getNowPlaying({int page = 0}) {
    return datasource.getNowPlaying(page: page);
  }
}