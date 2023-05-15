import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/movie.dart';

// Proveedor que notifica cuando cambia de estado
final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  return MoviesNotifier();
});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  MoviesNotifier() : super([]);
}
