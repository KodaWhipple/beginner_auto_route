import 'package:auto_route/auto_route.dart';
import 'package:ex_auto_route/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final _appRouter = CustomAppRouter();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AutoRoute Demo',
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              // _appRouter.navigateNamed(path)
              context.navigateNamedTo("/movies/0", includePrefixMatches: true);
            },
            child: const Text("movie details jump"),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class MoviesListScreen extends StatelessWidget {
  const MoviesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              context.popRoute();
            },
            child: const Text("go back"),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class MoviesDetailsScreen extends StatelessWidget {
  const MoviesDetailsScreen(
      {super.key, @PathParam('movieId') required this.movieId});

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(movies[movieId]!.name),
          ElevatedButton(
            onPressed: () {
              context.popRoute();
            },
            child: const Text("go back"),
          ),
        ],
      ),
    );
  }
}

class Movie {
  Movie(this.name);
  final String name;
}

final movies = {
  0: Movie("Avatar"),
};
