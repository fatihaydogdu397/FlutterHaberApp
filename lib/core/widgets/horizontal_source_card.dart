import 'package:flutter/material.dart';

class HorizontalSourceCard extends StatelessWidget {
  final String image;
  final String title;
  final String followers;
  final bool following;

  const HorizontalSourceCard({Key key, this.image, this.title, this.followers, this.following = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 100,
      child: Row(
        children: [
          Image.network(
            '$image',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$followers Takipçi',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text(following ? 'Kaldır' : 'Ekle'),
                  decoration: BoxDecoration(
                    color: following ? Colors.grey.shade300 : null,
                    border: following ? null : Border.all(color: Colors.black, width: 1.25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
