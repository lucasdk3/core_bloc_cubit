import 'package:core_bloc_cubit/app/app_router.dart';
import 'package:core_bloc_cubit/app/core/base/viewModel/cubit/base_cubit.dart';
import 'package:core_bloc_cubit/app/ui/theme/presenter/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'item.dart';

Widget items(BuildContext context) {
  // ignore: close_sinks
  final bloc = context.read<BaseCubit>();
  final state = context.watch<BaseCubit>().state;
  AppRouter router = AppRouter();
  return Wrap(
    children: [
      Builder(builder: (_) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: router.listPages.length,
            itemBuilder: (_, i) {
              Color iconColor = (state == i) ? secundary : secundary;
              Color lineColor = (state == i) ? secundary : primary;
              Color letraColor = (state == i) ? secundary : secundary;
              Color backgroundColor =
                  (state == i) ? Colors.transparent : Colors.transparent;
              return GestureDetector(
                onTap: () {
                  bloc.changeIndex(i);
                },
                child: item(router.listPages[i].title, router.listPages[i].icon,
                    iconColor, lineColor, letraColor, backgroundColor, context),
              );
            });
      }),
    ],
  );
}
