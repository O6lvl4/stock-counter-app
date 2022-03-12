import 'package:flutter/material.dart';
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
    final theme = Theme.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      DecrementButton(
          color: Colors.indigo,
          onPressed: () {
            onPressed(CounterActionType.decrement);
          }),
      const SizedBox(width: 10),
      SizedBox(
        width: 200,
        child: FractionLabel(
            top: Tuple2(topCount, theme.textTheme.titleLarge!.color!),
            bottom: Tuple2(bottomCount, theme.textTheme.titleLarge!.color!)),
      ),
      const SizedBox(width: 10),
      IncrementButton(
          color: Colors.indigo,
          onPressed: () {
            onPressed(CounterActionType.increment);
          }),
    ]);
  }
}
