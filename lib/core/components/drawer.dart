import 'package:flutter/material.dart';
import 'package:haber/core/components/custom_material_button.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [DDButton()],
            ),
          ),
        ),
        CustomMaterialButton()
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
    return ExpansionTile(
      title: Text("Gündem"),
      children: [
        ListTile(
          leading: Image(
            width: 50,
            image: NetworkImage(

                "https://www.freelogovectors.net/wp-content/uploads/2018/03/hurriyet-gazetesi-logo.png"),
            fit: BoxFit.fitWidth,
          ),
          
          title: Padding(
            padding:  EdgeInsets.only(left:20.0),
            child: Text("Hürriyet",style: TextStyle(fontSize:16),),
          ),
        )
      ],
    );
  }
}
