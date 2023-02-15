import 'package:flutter/material.dart';
import 'package:pokedex/pages/list/list_error.dart';
import 'package:pokedex/pages/list/list_loading.dart';
import 'package:pokedex/pages/list/list_page.dart';

import '../../data/models/pokemon.dart';
import '../../data/repository/pokemon_repository.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({Key? key, required this.repository}) : super(key: key);
  final IPokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
        future: repository.getAllPokemons(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListLoading();
          }

          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            return ListPage(list: snapshot.data!);
          }

          if (snapshot.hasError) {
            return ListError(error: snapshot.error.toString());
          }

          return Container();
        });
  }
}
