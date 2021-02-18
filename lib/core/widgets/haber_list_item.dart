import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HaberListItem extends StatelessWidget {
  const HaberListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 4,
        child: Container(
          //height: 250,
          width: double.infinity,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                    image: NetworkImage(
                        "https://i.sozcu.com.tr/wp-content/uploads/2021/02/18/iecrop/vaccine-reuters_16_9_1613644756.jpg"),
                    fit: BoxFit.fitHeight),
              ),
              Positioned(
                  bottom: 0,
                  width: MediaQuery.of(context).size.width*0.97,
                  child: Container(
                    padding: EdgeInsets.only(right:8),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8))),
                    //padding: EdgeInsets.all(12),

                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: AutoSizeText(
                        "Aile hekimi isyan etti: Yoğunluk var, aşı yok",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  top: 10,
                  left: 10,
                  //width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                    // width:double.infinity,

                    color: Colors.black.withOpacity(0.3),
                    child: AutoSizeText(
                      "15 dakika önce",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
