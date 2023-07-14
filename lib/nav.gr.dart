// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:ex_auto_route/main.dart' as _i1;
import 'package:flutter/material.dart' as _i3;

abstract class $CustomAppRouter extends _i2.RootStackRouter {
  $CustomAppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    MoviesListRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MoviesListScreen(),
      );
    },
    MoviesDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MoviesDetailsRouteArgs>(
          orElse: () =>
              MoviesDetailsRouteArgs(movieId: pathParams.getInt('movieId')));
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.MoviesDetailsScreen(
          key: args.key,
          movieId: args.movieId,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.MoviesListScreen]
class MoviesListRoute extends _i2.PageRouteInfo<void> {
  const MoviesListRoute({List<_i2.PageRouteInfo>? children})
      : super(
          MoviesListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoviesListRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.MoviesDetailsScreen]
class MoviesDetailsRoute extends _i2.PageRouteInfo<MoviesDetailsRouteArgs> {
  MoviesDetailsRoute({
    _i3.Key? key,
    required int movieId,
    List<_i2.PageRouteInfo>? children,
  }) : super(
          MoviesDetailsRoute.name,
          args: MoviesDetailsRouteArgs(
            key: key,
            movieId: movieId,
          ),
          rawPathParams: {'movieId': movieId},
          initialChildren: children,
        );

  static const String name = 'MoviesDetailsRoute';

  static const _i2.PageInfo<MoviesDetailsRouteArgs> page =
      _i2.PageInfo<MoviesDetailsRouteArgs>(name);
}

class MoviesDetailsRouteArgs {
  const MoviesDetailsRouteArgs({
    this.key,
    required this.movieId,
  });

  final _i3.Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MoviesDetailsRouteArgs{key: $key, movieId: $movieId}';
  }
}
