import 'package:flutter/material.dart';
import 'package:haber/core/components/drawer.dart';
import 'package:haber/core/widgets/gundem_list_item.dart';

class Gundem extends StatelessWidget {
  const Gundem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // drawer: CustomDrawer(),
     
      body: SingleChildScrollView(
          child: Column(
        children: [
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
          GundemListItem(),
        ],
      )),
    ));
  }
}

