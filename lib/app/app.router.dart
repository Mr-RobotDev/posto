// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i3;
import 'package:flutter/material.dart';
import 'package:posto/ui/views/templates/templates_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i4;

class Routes {
  static const templatesView = '/templates-view';

  static const all = <String>{templatesView};
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.templatesView,
      page: _i2.TemplatesView,
    )
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.TemplatesView: (data) {
      return _i3.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.TemplatesView(),
        settings: data,
        maintainState: false,
      );
    }
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i4.NavigationService {
  Future<dynamic> navigateToTemplatesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.templatesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTemplatesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.templatesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
