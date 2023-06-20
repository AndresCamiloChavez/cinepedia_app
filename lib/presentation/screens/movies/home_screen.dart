import 'package:cinepedia_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/providers.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeView(),
      bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref
        .read(nowPlayingMoviesProvider.notifier)
        .loadNextPage(); // cargando las peliculas
  }

  @override
  Widget build(BuildContext context) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final moviesSlideShow = ref.watch(moviesSlideShowProvider);

    if (moviesSlideShow.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        const CustomAppbar(),
        MoviesSlideShow(movies: moviesSlideShow),
        MovieHorizontalListView(
          movies: nowPlayingMovies,
          title: 'En cines',
          subTitle: 'Lunes 20',
        )
      ],
    );
  }
}
