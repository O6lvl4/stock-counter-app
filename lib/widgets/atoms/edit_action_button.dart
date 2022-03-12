import 'package:flutter/material.dart';

class EditActionButton extends StatelessWidget {
  const EditActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Edit',
      foregroundColor: Colors.white,
      backgroundColor: Colors.indigo,
      child: const Icon(Icons.edit),
    );
  }
}
