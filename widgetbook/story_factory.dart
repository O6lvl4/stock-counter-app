import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookWidget widgetStories(
    Widget widget, Map<String, Widget> anotherCases, String? widgetName) {
  return WidgetbookWidget(
    name: widgetName ?? widget.runtimeType.toString(),
    useCases: List.from(
        [WidgetbookUseCase(name: "Default", builder: (context) => widget)])
      ..addAll(anotherCases.entries.map((anotherCase) {
        return WidgetbookUseCase(
          name: anotherCase.key,
          builder: (context) => anotherCase.value,
        );
      })),
  );
}

WidgetbookWidget componentStories(
    Widget widget, Map<String, Widget> anotherCases) {
  for (var e in anotherCases.entries) {
    anotherCases[e.key] = Center(child: e.value);
  }
  return widgetStories(
      Center(child: widget), anotherCases, widget.runtimeType.toString());
}
