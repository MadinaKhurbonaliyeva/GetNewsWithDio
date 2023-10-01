import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movide_swagger_dio/features/home/data/models/data_model.dart';
import 'package:movide_swagger_dio/features/movies/data/model/get_all_response.dart';
import 'package:movide_swagger_dio/features/home/domain/repository.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<GetMoviesEvent>(_getMovie);
  }

  final _homeRepository = NewRepository();

  Future<void> _getMovie(GetMoviesEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getStatus: Status.loading));
    final result = await _homeRepository.getMovies();
    emit(state.copyWith(
      getMovieResponse: result,
      getStatus: Status.success,
    ));
  }
}
