import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(),
        SingleChildScrollView(
          child: Column(
            children: [DDButton()],
          ),
        )
      ],
    )
        // All other codes goes here.
        );
  }
}

class DDButton extends StatelessWidget {
  const DDButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButton<String>(
          elevation: 3,
          hint: Text("asdad"),
          
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    ));
  }
}
