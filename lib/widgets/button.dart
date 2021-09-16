import 'package:assignmentram/common/common/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback click;

  const ButtonWidget({
    required this.text,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: raisedButtonStyleYellow,
      onPressed: click,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
