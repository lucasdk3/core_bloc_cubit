import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);
  void changeTheme(bool isDark) => emit(isDark);
}
