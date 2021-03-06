import 'package:flutter/material.dart';

class CountLabel extends StatelessWidget {
  const CountLabel({Key? key, required this.count}) : super(key: key);
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$count',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
