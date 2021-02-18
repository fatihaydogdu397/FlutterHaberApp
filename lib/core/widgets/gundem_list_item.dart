import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GundemListItem extends StatelessWidget {
  const GundemListItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        //height: 100,
        padding: EdgeInsets.all(8),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 4,
          color: Colors.grey[100],
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        child: AutoSizeText("22 dakika önce",style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[600],fontSize: 13),)),
                    Container(
                        padding: EdgeInsets.all(8),
                        child: AutoSizeText("Sözcü Gazetesi",style: TextStyle(fontWeight: FontWeight.normal,color:Colors.grey[600],fontSize: 13),)),
                  ],
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:  MediaQuery.of(context).size.width*0.6,
                      padding: EdgeInsets.all(8),
                      child: AutoSizeText(
                        "Bakan Koca vaka sayısının en çok arttığı 5 kenti Açıkladı",
                        maxLines: 3,
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image(
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i.sozcu.com.tr/wp-content/uploads/2021/02/18/iecrop/depophotos_16870504_16_9_1613651422-880x495.jpg")),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
