import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'atoms/add_action_button.stories.dart';
import 'atoms/decrement_button.stories.dart';
import 'atoms/edit_action_button.stories.dart';
import 'atoms/fraction_label.stories.dart';
import 'atoms/increment_button.stories.dart';
import 'atoms/price_label.dart';
import 'molecules/category_hierarchy.stories.dart';
import 'organisms/counter.stories.dart';
import 'templates/increment_template.stories.dart';

class Storybook extends StatelessWidget {
  const Storybook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      defaultTheme: ThemeMode.light,
      lightTheme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      categories: [
        WidgetbookCategory(
          name: 'atoms',
          widgets: [
            addActionButtonStories(),
            editActionButtonStories(),
            fractionLabelStories(),
            incrementButtonStories(),
            decrementButtonStories(),
            priceLabelStories(),
          ],
        ),
        WidgetbookCategory(
          name: 'molecules',
          widgets: [
            categoryHierarchyStories(),
          ],
        ),
        WidgetbookCategory(
          name: 'organisms',
          widgets: [
            counterStories(),
          ],
        ),
        WidgetbookCategory(
          name: 'pages',
          widgets: [
            incrementTemplateStories(),
          ],
        ),
      ],
      appInfo: AppInfo(
        name: 'Widgetbook Example',
      ),
    );
  }
}
