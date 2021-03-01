import 'package:flutter/material.dart';
import 'package:haber/view/haberler.dart';

class KaynakSec extends StatelessWidget {
  const KaynakSec({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding:  EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Icons.check), onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return Haberler();
              }));})
        )],
        title: Text("Kaynak Seç"),
      ),
      body: SingleChildScrollView(child: ListTile()),
    ));
  }
}
