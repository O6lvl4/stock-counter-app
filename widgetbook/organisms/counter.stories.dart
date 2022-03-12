import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stock_counter_app/widgets/organisms/counter.dart';
import 'package:widgetbook/widgetbook.dart';

import '../story_factory.dart';

class CounterStory extends HookWidget {
  const CounterStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final top = useState(0);
    return Counter(
        topCount: top.value,
        bottomCount: 20,
        onPressed: (action) {
          switch (action) {
            case CounterActionType.increment:
              top.value += 1;
              break;
            case CounterActionType.decrement:
              top.value -= 1;
              break;
          }
        });
  }
}

WidgetbookWidget counterStories() {
  return componentStories(const CounterStory(), {});
}
