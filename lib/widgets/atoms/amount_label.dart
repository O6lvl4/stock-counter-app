import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AmmountLabel extends StatelessWidget {
  const AmmountLabel({Key? key, required this.price, this.style})
      : super(key: key);
  final int price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,###");
    return Text("¥" + formatter.format(price), style: style);
  }
}
