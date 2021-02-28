import 'package:flutter/material.dart';

class KaynakSec extends StatelessWidget {
  const KaynakSec({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding:  EdgeInsets.all(8.0),
          child: Icon(Icons.check),
        )],
        title: Text("Kaynak Seç"),
      ),
      body: SingleChildScrollView(child: ListTile()),
    ));
  }
}
