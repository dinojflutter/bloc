part of 'router_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashscreenRoute.page,
          path: "/",
          initial: true,
        ),
        AutoRoute(page: OnBoardRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(page: RegisteredRoute.page),
        AutoRoute(
          page: GeneralRoute.page,
        ),
        AutoRoute(page: HomeDetailsRoute.page)
      ];
}
