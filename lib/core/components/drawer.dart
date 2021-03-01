import 'package:flutter/material.dart';
import 'package:haber/core/components/custom_material_button.dart';
import 'package:haber/view/explore/explore_page.dart';
// import 'package:haber/view/kaynak_sec.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        DrawerHeader(
            child: Center(
                child: Text("Haberler",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20)))),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [DDButton()],
            ),
          ),
        ),
        CustomMaterialButton(
            title: "Kaynak Seç",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ExplorePage();
              }));
            })
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
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Hürriyet",
              style: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
