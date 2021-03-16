import 'package:core_bloc_cubit/app/app_router.dart';
import 'package:core_bloc_cubit/app/ui/theme/presenter/theme.dart';
import 'package:core_bloc_cubit/app/ui/theme/viewModel/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state;
    return ScreenUtilInit(
        designSize: Size(411.4, 820.6),
        allowFontScaling: false,
        builder: () {
          return Builder(
            builder: (context) {
              return MaterialApp(
                title: 'Core',
                theme: isDark ? buildDarkTheme() : buildLightTheme(),
                debugShowCheckedModeBanner: false,
                navigatorKey: AppRouter.instance.navigationKey,
                initialRoute: "/",
                routes: router.routes,
              );
            },
          );
        });
  }
}
