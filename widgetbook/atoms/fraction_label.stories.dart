import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/atoms/decrement_button.dart';
import 'package:stock_counter_app/widgets/atoms/fraction_label.dart';
import 'package:tuple/tuple.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget fractionLabelStories() {
  return componentStories(
      const FractionLabel(
          top: Tuple2(0, Colors.blue), bottom: Tuple2(20, Colors.black)),
      {});
}
