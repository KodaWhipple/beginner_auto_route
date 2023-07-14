import 'package:auto_route/auto_route.dart';
import 'nav.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class CustomAppRouter extends $CustomAppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: MoviesListRoute.page,
          path: '/movies',
        ),
        AutoRoute(
          page: MoviesDetailsRoute.page,
          path: '/movies/:movieId',
        ),
      ];
}
