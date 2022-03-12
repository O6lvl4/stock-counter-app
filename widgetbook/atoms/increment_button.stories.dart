import 'package:flutter/material.dart';
import 'package:stock_counter_app/widgets/atoms/increment_button.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget incrementButtonStories() {
  return componentStories(
      IncrementButton(color: Colors.blue, onPressed: () {}), {});
}
