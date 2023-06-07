import 'package:cinepedia_app/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/movie.dart';

// Proveedor que notifica cuando cambia de estado
final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(movieRespositoryProvider).getNowPlaying;
  return MoviesNotifier(
    fetchMoreMovies: fetchMoreMovies
  );
});


typedef MovieCallBack = Future<List<Movie>> Function({int page}); // definir el caso de uso


class MoviesNotifier extends StateNotifier<List<Movie>> { // clase que controla 

  int currentPage = 0;
  MovieCallBack fetchMoreMovies;

  MoviesNotifier({
    required this.fetchMoreMovies
  }) : super([]);

  Future<void> loadNextPage() async {
    //? acá el state es el listado de movies List<Movie>
    currentPage++;
    final List<Movie> movies = await fetchMoreMovies(page: currentPage);
    state = [...movies, ...state];

  }
}
