import 'package:stock_counter_app/widgets/atoms/edit_action_button.dart';
import 'package:stock_counter_app/widgets/molecules/category_hierarchy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stock_counter_app/widgets/molecules/price_label.dart';
import 'package:stock_counter_app/widgets/organisms/counter.dart';

class CounterTemplate extends HookWidget {
  const CounterTemplate({
    Key? key,
    required this.title,
    required this.stockCount,
    required this.limit,
    required this.itemPrice,
    required this.taxRate,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final int stockCount;
  final int limit;
  final int itemPrice;
  final double taxRate;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final count = useState(stockCount);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          const CategoryHierarchy(categories: ["道楽", "ルアー"]),
          const SizedBox(height: 20),
          Text("ラッキークラフト", style: textTheme.headline5),
          const SizedBox(height: 200),
          SizedBox(
            width: 210,
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
          PriceLabel(
              price: itemPrice * count.value,
              withTax: (itemPrice * (1 + taxRate)).toInt() * count.value),
          const SizedBox(height: 20),
          Counter(
            topCount: count.value,
            bottomCount: limit,
            onPressed: (action) {
              switch (action) {
                case CounterActionType.increment:
                  if (count.value >= limit) {
                    return;
                  }
                  count.value += 1;
                  break;
                case CounterActionType.decrement:
                  if (count.value <= 0) {
                    return;
                  }
                  count.value -= 1;
                  break;
              }
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
      floatingActionButton: const EditActionButton(),
    );
  }
}
