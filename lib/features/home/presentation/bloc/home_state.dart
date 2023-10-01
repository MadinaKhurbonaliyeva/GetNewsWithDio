part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  final GetMovieResponse? getMovieResponse;
  final Status? getStatus;

  const HomeState({
    this.getMovieResponse,
    this.getStatus,
  });

  HomeState copyWith({
    GetMovieResponse? getMovieResponse,
    Status? getStatus,
  }) {
    return HomeState(
      getMovieResponse: getMovieResponse ?? this.getMovieResponse,
      getStatus: getStatus ?? this.getStatus,
    );
  }

  @override
  List<Object?> get props => [
        getMovieResponse,
        getStatus,
      ];
}

enum Status { initial, loading, success, error }

extension StatusX on Status {
  bool get initial => this == Status.initial;

  bool get loading => this == Status.loading;

  bool get success => this == Status.success;

  bool get error => this == Status.error;
}
