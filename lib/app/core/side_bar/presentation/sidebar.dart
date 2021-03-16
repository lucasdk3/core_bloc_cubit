import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:flutter/material.dart';
import 'components/sidebar_button.dart';
import 'components/sidebar_full.dart';
import 'components/sidebar_light.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideBar extends StatefulWidget {
  final int index;

  const SideBar({Key? key, required this.index}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<SidebarBloc>().state;
    // ignore: close_sinks
    final bloc = context.read<SidebarBloc>();
    return Builder(
      builder: (context) {
        print(state);
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800.0) {
              bloc.add(ChangeLayoutEvent(true));
              return Align(
                  alignment: Alignment.topLeft,
                  child: (state.isOpen)
                      ? sideBarFull(context)
                      : sideBarLight(context));
            } else {
              bloc.add(ChangeLayoutEvent(false));
              return Align(
                  alignment: Alignment.topLeft,
                  child: (state.isOpen)
                      ? sideBarLight(context)
                      : sideBarButton(context));
            }
          },
        );
      },
    );
  }
}
