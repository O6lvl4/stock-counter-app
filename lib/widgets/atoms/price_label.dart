import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PriceLabel extends StatelessWidget {
  const PriceLabel({Key? key, required this.price}) : super(key: key);
  final int price;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final formatter = NumberFormat("#,###");
    return Text("¥" + formatter.format(price),
        style: textTheme.headline3!.copyWith(color: Colors.amber));
  }
}
