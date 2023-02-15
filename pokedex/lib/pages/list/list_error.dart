import 'package:flutter/material.dart';

class ListError extends StatelessWidget {
  const ListError({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}
