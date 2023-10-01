// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:bloc_app_2/presentation/screens/auth/auth_import.dart' as _i1;
import 'package:bloc_app_2/presentation/screens/onboard/onboard_imports.dart'
    as _i2;
import 'package:bloc_app_2/presentation/screens/splash/splash_import.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Auth(),
      );
    },
    OnBoardRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnBoard(),
      );
    },
    SplashscreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Splashscreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.Auth]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnBoard]
class OnBoardRoute extends _i4.PageRouteInfo<void> {
  const OnBoardRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Splashscreen]
class SplashscreenRoute extends _i4.PageRouteInfo<void> {
  const SplashscreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashscreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashscreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}