import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:stock_counter_app/widgets/atoms/amount_label.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget amountLabelStories() {
  return componentStories(
      const AmmountLabel(
        price: 123576,
      ),
      {});
}
