import 'package:assignmentram/common/common/colors.dart';
import 'package:flutter/material.dart';

class EditTextFields extends StatelessWidget {
  final String text;

  const EditTextFields({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blue),
          ),
          border: OutlineInputBorder(borderSide: BorderSide(color: blue)),
          labelText: text,
          labelStyle: TextStyle(color: blue)),
    );
  }
}
