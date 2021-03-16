import 'package:core_bloc_cubit/app/app_widget.dart';
import 'package:core_bloc_cubit/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:core_bloc_cubit/app/ui/theme/viewModel/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/search/cubit/search_cubit.dart';

class AppProviders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<ThemeCubit>(create: (BuildContext context) => ThemeCubit()),
      BlocProvider<BaseCubit>(create: (BuildContext context) => BaseCubit()),
      BlocProvider<SidebarBloc>(
          create: (BuildContext context) => SidebarBloc()),
      BlocProvider<SearchCubit>(
          create: (BuildContext context) => SearchCubit()),
    ], child: AppWidget());
  }
}
