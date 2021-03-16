import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'base_state.dart';

class BaseCubit extends Cubit<int> {
  BaseCubit() : super(0);

  void changeIndex(int newIndex) => emit(newIndex);
}
