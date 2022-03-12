import 'package:stock_counter_app/widgets/templates/increment_template.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget incrementTemplateStories() {
  return componentStories(
      IncrementTemplate(
        title: "Widgetbook sample",
        count: 100,
        onTap: () {
          debugPrint("onTap IncrementButton");
        },
      ),
      {});
}
