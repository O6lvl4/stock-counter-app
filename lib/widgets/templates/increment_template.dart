import 'package:stock_counter_app/widgets/atoms/increment_button.dart';
import 'package:stock_counter_app/widgets/molecules/count_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IncrementTemplate extends HookWidget {
  const IncrementTemplate({
    Key? key,
    required this.title,
    required this.count,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final int count;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CountLabel(count: count),
      ),
      floatingActionButton: IncrementButton(
        color: Colors.red,
        onPressed: onTap,
      ),
    );
  }
}
