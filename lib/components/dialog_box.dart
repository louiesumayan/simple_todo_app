// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:simple_todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onClose;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onClose});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Add a new task"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: 'Save', onPressed: onSave),
              const SizedBox(
                width: 10,
              ),
              MyButton(text: 'Cancel', onPressed: onClose)
            ],
          )
        ]),
      ),
    );
  }
}
