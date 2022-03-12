import 'package:flutter/material.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton(
      {Key? key, required this.color, required this.onPressed})
      : super(key: key);
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: 'Decrement',
      icon: Icon(
        Icons.remove_circle_outline,
        color: color,
      ),
    );
  }
}
