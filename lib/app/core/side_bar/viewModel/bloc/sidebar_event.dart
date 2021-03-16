part of 'sidebar_bloc.dart';

abstract class SidebarEvent extends Equatable {
  const SidebarEvent();

  @override
  List<Object> get props => [];
}

class OpeningEvent extends SidebarEvent {
  final bool isOpen;

  const OpeningEvent(this.isOpen);

  @override
  List<Object> get props => [isOpen];
}

class ChangeLayoutEvent extends SidebarEvent {
  final bool isWeb;

  const ChangeLayoutEvent(this.isWeb);

  @override
  List<Object> get props => [isWeb];
}
