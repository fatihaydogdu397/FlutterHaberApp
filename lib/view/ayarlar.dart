import 'package:flutter/material.dart';
import 'package:haber/core/components/drawer.dart';
import 'package:haber/core/components/switch_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Ayarlar extends StatelessWidget {
  const Ayarlar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: Text(
                "Genel",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.add_box,
                            size: 30, color: Colors.grey[600]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Kaynak Ekle",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.insert_chart,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Piyasa Takip",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CSwitchButton(),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.image,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Haber Görselleri",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CSwitchButton(),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.notifications_none,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Bildirimler",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CSwitchButton(),
                      )
                    ],
                  ),
                  // Divider(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: Text(
                "Tema",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.eyeSettings,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Sistem Teması",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CSwitchButton(),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.themeLightDark,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Koyu Tema",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: CSwitchButton(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: Text(
                "Uygulama Hakkında",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.comment,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Görüş Bildir",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.star,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Değerlendir / Oyla",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ),Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.share,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Uygulamayı Paylaş",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ),Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(MdiIcons.alertCircle,
                                size: 30, color: Colors.grey[600]),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Hakkında",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}
