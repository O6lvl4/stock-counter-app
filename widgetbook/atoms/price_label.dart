import 'package:stock_counter_app/widgets/atoms/price_label.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget priceLabelStories() {
  return componentStories(
      const PriceLabel(
        price: 123576,
      ),
      {});
}
