import 'package:flutter/material.dart';

class ListLoading extends StatelessWidget {
  const ListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
