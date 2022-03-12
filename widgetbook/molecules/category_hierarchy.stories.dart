import 'package:stock_counter_app/widgets/molecules/category_hierarchy.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

WidgetbookWidget categoryHierarchyStories() {
  return componentStories(
      const CategoryHierarchy(
        categories: ["道楽", "ルアー"],
      ),
      {});
}
