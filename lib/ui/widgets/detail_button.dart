import 'package:flutter/material.dart';

class Detailbutton extends StatelessWidget {
  final String btnTitle;
  Detailbutton({required this.btnTitle});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[200]),
        onPressed: () {},
        icon: Icon(Icons.arrow_right),
        label: Text(btnTitle));
  }
}
