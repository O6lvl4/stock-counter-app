import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/atoms/amount_label.dart';

class PriceLabel extends StatelessWidget {
  const PriceLabel({Key? key, required this.price, required this.withTax})
      : super(key: key);
  final int price;
  final int withTax;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("税込み", style: textTheme.overline),
            AmmountLabel(
              price: withTax,
              style: textTheme.headline4!.copyWith(color: Colors.amber),
            ),
          ],
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("税抜き", style: textTheme.overline),
            AmmountLabel(
              price: price,
              style: textTheme.subtitle2!.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ],
    );
  }
}
