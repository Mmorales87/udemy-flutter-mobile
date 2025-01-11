import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(movieRepositoryProvider).getNowPlaying;
  return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
});

typedef MovieCallback = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  /// No usamos   MoviesNotifier(super.state);
  ///
  /// Porque:
  /// 1- inicialmente no tenemos películas
  /// 2- Las películas se cargarán después cuando hagas la llamada a la API
  /// No tiene sentido pasar un estado inicial porque siempre empezarás con una lista vacía
  /// Por eso usamos MoviesNotifier() : super([]), ya que es el caso más común cuando trabajas
  /// con providers que cargarán datos de forma asíncrona.
  ///

  int currentPage = 0;
  MovieCallback fetchMoreMovies;
  MoviesNotifier({required this.fetchMoreMovies}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;

    final List<Movie> movies = await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
