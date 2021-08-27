import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String lable;
  final bool keyType = false;
  TextFieldWidget({required this.lable, keyTupe});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelText: lable,
      ),
    );
  }
}
