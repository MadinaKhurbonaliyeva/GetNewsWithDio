part of 'movie_bloc.dart';

@immutable
class MovieState extends Equatable {
  final GetAllMoviesResponse? getAllMovieResponse;
  final Status? getStatus;

  const MovieState({
    this.getAllMovieResponse,
    this.getStatus,
  });

  MovieState copyWith({
    GetAllMoviesResponse? getAllMovieResponse,
    Status? getStatus,
  }) {
    return MovieState(
      getAllMovieResponse: getAllMovieResponse ?? this.getAllMovieResponse,
      getStatus: getStatus ?? this.getStatus,
    );
  }

  @override
  List<Object?> get props => [
        getStatus,
        getAllMovieResponse,
      ];
}

enum Status { initial, loading, success, error, failure }

extension StatusX on Status {
  bool get initial => this == Status.initial;

  bool get loading => this == Status.loading;

  bool get success => this == Status.success;

  bool get error => this == Status.error;
}
