import 'package:flutter/material.dart';
import 'package:haber/core/components/drawer.dart';
import 'package:haber/core/widgets/currencies_list_item.dart';
import 'package:haber/core/widgets/haber_list_item.dart';

class Haberler1 extends StatefulWidget {
  Haberler1({Key key}) : super(key: key);

  @override
  _Haberler1State createState() => _Haberler1State();
}

class _Haberler1State extends State<Haberler1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Haberler extends StatelessWidget {
  const Haberler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Sözcü"),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: null),
                IconButton(
                    icon: Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ],
            ),
            // drawer: CustomDrawer(),
            body: SingleChildScrollView(
                child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Currencies(),
                      Currencies(),
                      Currencies(),
                      Currencies(),
                      Currencies(),
                      Currencies(),
                    ],
                  ),
                ),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
                HaberListItem(),
              ],
            ))));
  }
}

