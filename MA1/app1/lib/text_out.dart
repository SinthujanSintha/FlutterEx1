import 'package:flutter/material.dart';

class TextOut extends StatelessWidget {
  final String textout;

  TextOut(this.textout);

  @override
  Widget build(BuildContext context) {
    return Text(textout);
  }
}
