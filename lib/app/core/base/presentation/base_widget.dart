import 'package:core_bloc_cubit/app/app_router.dart';
import 'package:core_bloc_cubit/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:core_bloc_cubit/app/core/side_bar/presentation/sidebar.dart';
import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseWidget extends StatefulWidget {
  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    final state = context.watch<BaseCubit>().state;
    final stateSidebar = context.watch<SidebarBloc>().state;
    return Scaffold(body: Builder(
      builder: (context) {
        return Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(left: stateSidebar.margin),
                child: router.listPages.map((e) => e.page).elementAt(state)),
            SideBar(index: state),
          ],
        );
      },
    ));
  }
}
