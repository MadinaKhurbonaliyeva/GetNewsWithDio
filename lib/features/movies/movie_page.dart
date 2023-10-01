import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movide_swagger_dio/features/movies/presentation/bloc/movie_bloc.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return BlocBuilder<MovieBloc, MovieState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xff15141F),
          body: state.getStatus == Status.loading
              ? const Center(child: CircularProgressIndicator())
              : SafeArea(
                  child: ListView.builder(
                    itemCount: state.getAllMovieResponse?.docs?.length ?? 0,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var response = state.getAllMovieResponse?.docs?[index];
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: media.size.height * 350 / 812,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: media.size.height * 200 / 812,
                                width: double.infinity,
                                child: Image.network(
                                  response?.logo?.url ?? '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                response?.name ?? '',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Container(
                                height: media.size.height * 25 / 812,
                                width: media.size.width * 80 / 360,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.deepOrange),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    response?.shortDescription ?? '',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        );
      },
    );
  }
}

