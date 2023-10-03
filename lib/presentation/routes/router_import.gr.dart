// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:bloc_app_2/presentation/screens/auth/auth_import.dart' as _i1;
import 'package:bloc_app_2/presentation/screens/auth/login/login_import.dart'
    as _i2;
import 'package:bloc_app_2/presentation/screens/auth/registered/registered_import.dart'
    as _i4;
import 'package:bloc_app_2/presentation/screens/onboard/onboard_imports.dart'
    as _i3;
import 'package:bloc_app_2/presentation/screens/splash/splash_import.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Auth(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
      );
    },
    OnBoardRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoard(),
      );
    },
    RegisteredRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Registered(),
      );
    },
    SplashscreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Splashscreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.Auth]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnBoard]
class OnBoardRoute extends _i6.PageRouteInfo<void> {
  const OnBoardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Registered]
class RegisteredRoute extends _i6.PageRouteInfo<void> {
  const RegisteredRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisteredRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisteredRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Splashscreen]
class SplashscreenRoute extends _i6.PageRouteInfo<void> {
  const SplashscreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashscreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashscreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
