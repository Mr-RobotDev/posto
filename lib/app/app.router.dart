// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i11;

import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:posto/ui/views/app/app_view.dart' as _i7;
import 'package:posto/ui/views/categories/categories_view.dart' as _i4;
import 'package:posto/ui/views/category_templates/category_templates_view.dart'
    as _i8;
import 'package:posto/ui/views/create_post/create_post_view.dart' as _i9;
import 'package:posto/ui/views/home/home_view.dart' as _i3;
import 'package:posto/ui/views/language_region/language_region_view.dart'
    as _i6;
import 'package:posto/ui/views/settings/settings_view.dart' as _i5;
import 'package:posto/ui/views/templates/templates_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i12;

class Routes {
  static const templatesView = '/templates-view';

  static const homeView = '/home-view';

  static const categoriesView = '/categories-view';

  static const settingsView = '/settings-view';

  static const languageRegionView = '/language-region-view';

  static const appView = '/app-view';

  static const categoryTemplatesView = '/category-templates-view';

  static const createPostView = '/create-post-view';

  static const all = <String>{
    templatesView,
    homeView,
    categoriesView,
    settingsView,
    languageRegionView,
    appView,
    categoryTemplatesView,
    createPostView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.templatesView,
      page: _i2.TemplatesView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i3.HomeView,
    ),
    _i1.RouteDef(
      Routes.categoriesView,
      page: _i4.CategoriesView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i5.SettingsView,
    ),
    _i1.RouteDef(
      Routes.languageRegionView,
      page: _i6.LanguageRegionView,
    ),
    _i1.RouteDef(
      Routes.appView,
      page: _i7.AppView,
    ),
    _i1.RouteDef(
      Routes.categoryTemplatesView,
      page: _i8.CategoryTemplatesView,
    ),
    _i1.RouteDef(
      Routes.createPostView,
      page: _i9.CreatePostView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.TemplatesView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.TemplatesView(),
        settings: data,
        maintainState: false,
      );
    },
    _i3.HomeView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.HomeView(),
        settings: data,
        maintainState: false,
      );
    },
    _i4.CategoriesView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.CategoriesView(),
        settings: data,
        maintainState: false,
      );
    },
    _i5.SettingsView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SettingsView(),
        settings: data,
        maintainState: false,
      );
    },
    _i6.LanguageRegionView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LanguageRegionView(),
        settings: data,
        maintainState: false,
      );
    },
    _i7.AppView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.AppView(),
        settings: data,
        maintainState: false,
      );
    },
    _i8.CategoryTemplatesView: (data) {
      final args = data.getArgs<CategoryTemplatesViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i8.CategoryTemplatesView(args.name, key: args.key),
        settings: data,
        maintainState: false,
      );
    },
    _i9.CreatePostView: (data) {
      final args = data.getArgs<CreatePostViewArguments>(
        orElse: () => const CreatePostViewArguments(),
      );
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.CreatePostView(
            key: args.key, imageUrl: args.imageUrl, image: args.image),
        settings: data,
        maintainState: false,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CategoryTemplatesViewArguments {
  const CategoryTemplatesViewArguments({
    required this.name,
    this.key,
  });

  final String name;

  final _i10.Key? key;

  @override
  String toString() {
    return '{"name": "$name", "key": "$key"}';
  }
}

class CreatePostViewArguments {
  const CreatePostViewArguments({
    this.key,
    this.imageUrl,
    this.image,
  });

  final _i10.Key? key;

  final String? imageUrl;

  final _i11.File? image;

  @override
  String toString() {
    return '{"key": "$key", "imageUrl": "$imageUrl", "image": "$image"}';
  }
}

extension NavigatorStateExtension on _i12.NavigationService {
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

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCategoriesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.categoriesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLanguageRegionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.languageRegionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCategoryTemplatesView({
    required String name,
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.categoryTemplatesView,
        arguments: CategoryTemplatesViewArguments(name: name, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreatePostView({
    _i10.Key? key,
    String? imageUrl,
    _i11.File? image,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.createPostView,
        arguments:
            CreatePostViewArguments(key: key, imageUrl: imageUrl, image: image),
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

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCategoriesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.categoriesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLanguageRegionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.languageRegionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCategoryTemplatesView({
    required String name,
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.categoryTemplatesView,
        arguments: CategoryTemplatesViewArguments(name: name, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreatePostView({
    _i10.Key? key,
    String? imageUrl,
    _i11.File? image,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.createPostView,
        arguments:
            CreatePostViewArguments(key: key, imageUrl: imageUrl, image: image),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
