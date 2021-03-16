import 'package:bloc/bloc.dart';

class SearchCubit extends Cubit<String> {
  SearchCubit() : super('');

  void changeSearch(String newSearch) => emit(newSearch);
}
