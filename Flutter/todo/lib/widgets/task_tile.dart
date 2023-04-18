import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late bool? isChecked ;
  final String? taskTitle;
  final Function(bool?)? checkBoxCallback;
  final Function()?longPressCallback;

  TaskTile({this.isChecked, this.taskTitle,this.checkBoxCallback,this.longPressCallback});

  //  void checkBoxCallback

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration:
                isChecked! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged:checkBoxCallback,
      // toggleCheckboxState,
    ),
    );
  }
}


