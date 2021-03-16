import 'package:core_bloc_cubit/app/core/side_bar/viewModel/bloc/sidebar_bloc.dart';
import 'package:core_bloc_cubit/app/ui/theme/presenter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buttomOpen(BuildContext context) {
  // ignore: close_sinks
  final bloc = context.read<SidebarBloc>();
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(
      onTap: () {
        bloc.add(OpeningEvent(true));
      },
      child: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
            color: primary, borderRadius: BorderRadius.circular(4)),
        child: Icon(Icons.arrow_forward_outlined, color: secundary, size: 26),
      ),
    ),
  );
}
