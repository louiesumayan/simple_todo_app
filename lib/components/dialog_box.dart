// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_todo_app/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  const DialogBox({super.key, required this.controller});

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
              MyButton(text: 'Save', onPressed: () {}),
              const SizedBox(
                width: 10,
              ),
              MyButton(text: 'Cancel', onPressed: () {})
            ],
          )
        ]),
      ),
    );
  }
}
