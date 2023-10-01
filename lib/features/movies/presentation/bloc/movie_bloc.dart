import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movide_swagger_dio/features/movies/data/model/get_all_response.dart';
import 'package:movide_swagger_dio/features/movies/domain/movie_repository.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const MovieState()) {
    on<GetAllMoviesEvent>(_getAllMovie);
  }

  final _movieRepository = MovieRepository();

  Future<void> _getAllMovie(
      GetAllMoviesEvent event, Emitter<MovieState> emit) async {
    emit(state.copyWith(getStatus: Status.loading));
    try {
      final result = await _movieRepository.getAllMovie();
      emit(
        state.copyWith(
          getAllMovieResponse: result,
          getStatus: Status.success,
        ),
      );
    } catch (e) {
      emit(state.copyWith(getStatus: Status.failure));
    }
  }
}
