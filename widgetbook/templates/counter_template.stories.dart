import 'package:stock_counter_app/widgets/templates/counter_template.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget counterTemplateStories() {
  return componentStories(
      const CounterTemplate(
        title: "STOCK COUNTER",
        limit: 20,
        stockCount: 10,
        itemPrice: 3300,
        taxRate: 0.07,
      ),
      {});
}
