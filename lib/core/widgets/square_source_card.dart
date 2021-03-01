import 'package:flutter/material.dart';

class SquareSourceCard extends StatelessWidget {
  final String title;
  final String image;

  const SquareSourceCard({Key key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            height: 120,
            width: 132,
            color: Colors.red,
            child: Image.network('$image', width: 120, height: 120, fit: BoxFit.cover),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              '$title',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
          ),
        ],
      ),
    );
  }
}
