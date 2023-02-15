import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/data/repository/pokemon_repository.dart';
import 'package:pokedex/pages/home/home_page.dart';
import 'package:pokedex/pages/list/list_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListContainer(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
