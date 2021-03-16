part of 'sidebar_bloc.dart';

class SidebarState extends Equatable {
  final bool isOpen;
  final bool isWeb;
  final double margin;
  const SidebarState(
      {required this.isOpen, required this.isWeb, required this.margin});

  @override
  List<Object> get props => [isOpen, isWeb, margin];

  SidebarState copyWith({isOpen, isWeb, margin}) => SidebarState(
      isOpen: isOpen ?? this.isOpen,
      isWeb: isWeb ?? this.isWeb,
      margin: margin ?? this.margin);
}
