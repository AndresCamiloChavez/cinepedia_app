import 'package:cinepedia_app/infraestructure/datasources/moviedb_datasource.dart';
import 'package:cinepedia_app/infraestructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//Este repositorio es inmutable
final movieRespositoryProvider = Provider((ref){ // es para que quedé inicalizado
  return MovieRepositoryImpl(MoviesdbDatasource());
});