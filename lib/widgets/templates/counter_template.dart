import 'package:stock_counter_app/widgets/atoms/edit_action_button.dart';
import 'package:stock_counter_app/widgets/molecules/category_hierarchy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stock_counter_app/widgets/organisms/counter.dart';
import 'package:stock_counter_app/widgets/organisms/item_price_box.dart';

class CounterTemplate extends HookWidget {
  const CounterTemplate({
    Key? key,
    required this.title,
    required this.stockCount,
    required this.limit,
    required this.itemPrice,
    required this.taxRate,
  }) : super(key: key);
  final String title;
  final int stockCount;
  final int limit;
  final int itemPrice;
  final double taxRate;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final count = useState(stockCount);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          const CategoryHierarchy(categories: ["道楽", "ルアー"]),
          const SizedBox(height: 20),
          Text("ラッキークラフト", style: textTheme.headline5),
          const SizedBox(height: 200),
          ItemPriceBox(
              itemPrice: itemPrice, itemCount: count.value, taxRate: taxRate),
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
