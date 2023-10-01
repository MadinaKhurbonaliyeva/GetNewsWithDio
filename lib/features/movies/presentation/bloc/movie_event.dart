part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
}

class GetAllMoviesEvent extends MovieEvent {
  const GetAllMoviesEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}
