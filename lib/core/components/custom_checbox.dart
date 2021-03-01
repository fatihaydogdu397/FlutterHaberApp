import 'package:flutter/material.dart';


class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({Key key}) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool checkedValue=false;
    return CheckboxListTile(
  title: Text("title text"),
  value: checkedValue,
  onChanged: (newValue) {
    setState(() {
      checkedValue = newValue;
    });
  },
  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
);
  }
}

