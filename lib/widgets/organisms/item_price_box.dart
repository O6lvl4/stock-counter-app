import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/molecules/price_label.dart';

class ItemPriceBox extends StatelessWidget {
  const ItemPriceBox(
      {Key? key,
      required this.itemPrice,
      required this.itemCount,
      required this.taxRate})
      : super(key: key);
  final int itemPrice;
  final int itemCount;
  final double taxRate;

  @override
  Widget build(BuildContext context) {
    const double width = 230;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "税率: ${(taxRate * 100).toStringAsFixed(1)} %",
                style: textTheme.overline!.copyWith(
                  color: textTheme.overline!.color!.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PriceLabel(
                  price: itemPrice * itemCount,
                  withTax: (itemPrice * (1 + taxRate)).toInt() * itemCount),
            ],
          ),
        ),
      ],
    );
  }
}
