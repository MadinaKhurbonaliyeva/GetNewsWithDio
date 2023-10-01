import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movide_swagger_dio/features/home/presentation/bloc/home_bloc.dart';
import 'package:movide_swagger_dio/features/home/presentation/main_page.dart';
import 'package:movide_swagger_dio/features/movies/presentation/bloc/movie_bloc.dart';

import 'features/bloc/main_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainBloc(),
        ),
        BlocProvider(
            create: (context) => MovieBloc()
              ..add(
                const GetAllMoviesEvent(),
              )),
        BlocProvider(
          create: (context) => HomeBloc()..add(GetMoviesEvent()),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MainPage()),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}
