part of 'example_bloc.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  @override
  List<Object> get props => [];
}

class SearchEvent extends ExampleEvent {
  final String search;
  const SearchEvent(this.search);

  @override
  List<Object> get props => [search];
}
