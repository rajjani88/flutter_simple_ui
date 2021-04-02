import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  String hint;
  Icon icon;

  InputFields({this.hint, this.icon, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: this.icon,
        hintText: '${this.hint}',
      ),
    );
  }
}
