import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/atoms/decrement_button.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget decrementButtonStories() {
  return componentStories(
      DecrementButton(color: Colors.red, onPressed: () {}), {});
}
