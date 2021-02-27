import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  
  final String title;
  final VoidCallback onTap;

  const CustomMaterialButton({Key key, this.title, this.onTap}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: InkWell(
        onTap: onTap,
          child: Container(
              height: 60,
              width: double.infinity,
              child: Center(
                  child: Text(
                "$title",
                textAlign: TextAlign.center,
              )))),
    );
  }
}
