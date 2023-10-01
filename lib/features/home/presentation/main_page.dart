import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movide_swagger_dio/features/bloc/main_bloc.dart';
import 'package:movide_swagger_dio/features/home/presentation/home_page.dart';

import '../../movies/movie_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'New Info',
              style: TextStyle(color: Colors.deepOrange, fontSize: 25),
            ),
          ),
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              MoviePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.headphones), label: 'New'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle), label: 'Movie'),
            ],
            backgroundColor: const Color(0xff15141F),
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xffFF8F71),
          ),
        );
      },
    );
  }
}
