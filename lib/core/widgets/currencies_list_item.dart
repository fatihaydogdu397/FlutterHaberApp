import 'package:flutter/material.dart';



class Currencies extends StatelessWidget {
  const Currencies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 4,
        color: Colors.grey[100],//.withOpacity(0.2),
        child: Container(
            padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image(
                          fit: BoxFit.fitHeight,
                          width: 40,
                          height: 40,
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg")),
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Text("USD",
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                      size: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Text("6,985",
                            style: TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
