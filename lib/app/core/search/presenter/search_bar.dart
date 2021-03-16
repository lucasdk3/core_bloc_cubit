import 'package:core_bloc_cubit/app/core/search/cubit/search_cubit.dart';
import 'package:core_bloc_cubit/app/ui/components/forms_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget searchBar(BuildContext context) {
  var theme = Theme.of(context);
  // ignore: close_sinks
  final cubit = context.read<SearchCubit>();
  return Builder(
    builder: (context) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 48, top: 8),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: forms(
                action: TextInputAction.search,
                icon: Icon(Icons.search, size: 24, color: theme.primaryColor),
                field: 'Pesquise pelo nome',
                onChanged: cubit.changeSearch),
          ),
        ),
      );
    },
  );
}
