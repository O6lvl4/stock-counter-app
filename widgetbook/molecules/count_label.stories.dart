import 'package:stock_counter_app/widgets/molecules/count_label.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget countLabelStories() {
  return componentStories(
      const CountLabel(
        count: 10,
      ),
      {});
}
