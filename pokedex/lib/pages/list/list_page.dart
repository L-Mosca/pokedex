import 'package:flutter/material.dart';

import '../../data/models/pokemon.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key, required this.list}) : super(key: key);

  final List<Pokemon> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: list.length, itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(list[index].name),
        );
      }),
    );
  }
}
