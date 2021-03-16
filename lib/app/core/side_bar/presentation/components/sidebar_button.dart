import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:core_bloc_cubit/app/ui/theme/presenter/theme.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget sideBarButton(BuildContext context) {
  // ignore: close_sinks
  final bloc = context.read<SidebarBloc>();
  bool ifWeb = UniversalPlatform.isWeb;
  return Padding(
    padding: EdgeInsets.only(top: ifWeb ? 12 : 61.0),
    child: GestureDetector(
      onTap: () {
        bloc.add(OpeningEvent(true));
      },
      child: Container(
        decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12))),
        height: 44,
        width: 34,
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.menu,
            color: secundary,
            size: 24,
          ),
        ),
      ),
    ),
  );
}
