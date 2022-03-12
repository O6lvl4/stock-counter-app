import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stock_counter_app/widgets/atoms/decrement_button.dart';
import 'package:stock_counter_app/widgets/atoms/fraction_label.dart';
import 'package:stock_counter_app/widgets/atoms/increment_button.dart';
import 'package:tuple/tuple.dart';

enum CounterActionType { increment, decrement }

class Counter extends StatelessWidget {
  const Counter(
      {Key? key,
      required this.topCount,
      required this.bottomCount,
      required this.onPressed})
      : super(key: key);
  final int topCount;
  final int bottomCount;
  final void Function(CounterActionType) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      DecrementButton(
          color: Colors.blue,
          onPressed: () {
            onPressed(CounterActionType.decrement);
          }),
      const SizedBox(width: 10),
      SizedBox(
        width: 200,
        child: FractionLabel(
            top: Tuple2(topCount, Colors.black),
            bottom: Tuple2(bottomCount, Colors.black38)),
      ),
      const SizedBox(width: 10),
      IncrementButton(
          color: Colors.blue,
          onPressed: () {
            onPressed(CounterActionType.increment);
          }),
    ]);
  }
}
