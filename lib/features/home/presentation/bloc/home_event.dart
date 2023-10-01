part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetMoviesEvent extends HomeEvent {
  GetMoviesEvent();
}
