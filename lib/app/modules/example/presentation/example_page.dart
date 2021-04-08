import 'package:core_bloc_cubit/app/core/search/presenter/search_bar.dart';
import 'package:core_bloc_cubit/app/ui/components/buttons_ui.dart';
import 'package:core_bloc_cubit/app/ui/theme/viewModel/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final cubit = context.read<ThemeCubit>();
    final theme = context.watch<ThemeCubit>().state;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: searchBar(context),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonUi(() {
                cubit.changeTheme(!theme);
              }, 'Change theme'),
              Text('Example'),
            ],
          ),
        ),
      ),
    );
  }
}
