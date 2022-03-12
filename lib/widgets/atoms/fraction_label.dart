import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class FractionLabel extends StatelessWidget {
  const FractionLabel({Key? key, required this.top, required this.bottom})
      : super(key: key);
  final Tuple2<int, Color> top;
  final Tuple2<int, Color> bottom;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const double margin = 40;
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: margin),
            child: Text(
              "${top.item1}",
              style: textTheme.headline2!.copyWith(color: top.item2),
            ),
          ),
          Text("/", style: textTheme.headline1),
          Container(
            margin: const EdgeInsets.only(top: margin),
            child: Text(
              "${bottom.item1}",
              style: textTheme.headline2!.copyWith(color: bottom.item2),
            ),
          ),
        ],
      ),
    );
  }
}
