import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_screenutil/screen_util.dart';

part 'sidebar_event.dart';
part 'sidebar_state.dart';

class SidebarBloc extends Bloc<SidebarEvent, SidebarState> {
  SidebarBloc() : super(SidebarState(isOpen: false, isWeb: false, margin: 0));

  @override
  Stream<SidebarState> mapEventToState(
    SidebarEvent event,
  ) async* {
    if (event is OpeningEvent) {
      yield state.copyWith(isOpen: event.isOpen);
    } else if (event is ChangeLayoutEvent) {
      yield state.copyWith(isWeb: event.isWeb);
    }
    if (state.isOpen == true && state.isWeb == false) {
      yield state.copyWith(margin: ScreenUtil().setWidth(60));
    } else if (state.isOpen == false && state.isWeb == true) {
      yield state.copyWith(margin: ScreenUtil().setWidth(40));
    } else if (state.isOpen == true && state.isWeb == true) {
      yield state.copyWith(margin: ScreenUtil().setWidth(120));
    } else {
      yield state.copyWith(margin: ScreenUtil().setWidth(20));
    }
  }
}
