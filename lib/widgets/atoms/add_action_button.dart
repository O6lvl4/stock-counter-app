import 'package:flutter/material.dart';

class AddActionButton extends StatelessWidget {
  const AddActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
