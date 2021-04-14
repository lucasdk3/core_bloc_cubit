import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:core_bloc_cubit/app/core/search/cubit/search_cubit.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  final SearchCubit searchCubit;
  StreamSubscription? searchSubscription;
  ExampleBloc({required this.searchCubit}) : super(ExampleInitial()) {
    searchCubit.stream.listen((search) => add(SearchEvent(search)));
  }
  @override
  Stream<ExampleState> mapEventToState(
    ExampleEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  @override
  Future<void> close() async {
    await searchSubscription?.cancel();

    return super.close();
  }
}
