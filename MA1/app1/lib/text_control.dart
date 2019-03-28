import 'package:flutter/material.dart';
import './text_out.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String mainText = "This is the First Assignment";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          color: Colors.limeAccent,
          onPressed: () {
            setState(() {
              mainText = "this text is changed";
            });
          },
          child: Text("ChangeText"),
        ),
        TextOut(mainText)
      ],
    );
  }
}
