import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class CategoryHierarchy extends StatelessWidget {
  const CategoryHierarchy({Key? key, required this.categories})
      : super(key: key);
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BreadCrumb.builder(
      itemCount: categories.length,
      builder: (index) {
        return BreadCrumbItem(
            content: Text(categories[index], style: textTheme.subtitle1));
      },
      divider: const Icon(Icons.chevron_right, color: Colors.amber),
    );
  }
}
