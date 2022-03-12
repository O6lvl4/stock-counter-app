import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton(
      {Key? key, required this.color, required this.onPressed})
      : super(key: key);
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      icon: Icon(
        Icons.add_circle_outline,
        color: color,
      ),
    );
  }
}
