import 'package:core_bloc_cubit/app/core/base/presentation/base_widget.dart';
import 'package:core_bloc_cubit/app/modules/example/presentation/example_page.dart';
import 'package:flutter/material.dart';

import 'core/side_bar/infra/page_model.dart';
import 'modules/example2/presentation/example_page_2.dart';

class AppRouter {
  List<PageModel> listPages = [
    PageModel(
        title: 'Dashboard',
        icon: Icons.dashboard_outlined,
        page: ExamplePage()),
    PageModel(
        title: 'User',
        icon: Icons.person_outline_outlined,
        page: ExamplePage2()),
  ];

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => BaseWidget(),
    '/example': (BuildContext context) => ExamplePage(),
    '/example2': (BuildContext context) => ExamplePage2(),
  };

  GlobalKey<NavigatorState>? navigationKey;

  static AppRouter instance = AppRouter();

  AppRouter() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  Future<dynamic> off(String _rn) {
    return navigationKey!.currentState!.pushReplacementNamed(_rn);
  }

  Future<dynamic> to(String _rn) {
    return navigationKey!.currentState!.pushNamed(_rn);
  }

  Future<dynamic> navigateToRoute(MaterialPageRoute _rn) {
    return navigationKey!.currentState!.push(_rn);
  }

  pop() {
    return navigationKey!.currentState!.pop();
  }
}
