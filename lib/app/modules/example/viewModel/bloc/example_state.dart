part of 'example_bloc.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();
  
  @override
  List<Object> get props => [];
}

class ExampleInitial extends ExampleState {}
