import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExploreArticlesPage extends StatefulWidget {
  @override
  _ExploreArticlesPageState createState() => _ExploreArticlesPageState();
}

class _ExploreArticlesPageState extends State<ExploreArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text('Popüler', style: TextStyle(fontSize: 24)),
          SizedBox(height: 24),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Google'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Tübitak'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Biyoteknoloji'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Mustafa Cengiz'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Berat Albayrak'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Minecraft'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Edirne'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Koç Holding'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Aksaray'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Mansur Yavaş'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Biyoteknoloji'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Mustafa Cengiz'),
          Divider(height: 1, color: Colors.grey.shade200),
          _tagItem('Berat Albayrak'),
          Divider(height: 1, color: Colors.grey.shade200),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _tagItem(String title) {
    return Column(
      children: [
        Container(
          height: 42,
          child: Row(
            children: [
              CircleAvatar(radius: 12, child: Icon(FontAwesomeIcons.hashtag, size: 14)),
              SizedBox(width: 8),
              Expanded(child: Text('$title')),
              Container(
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: .5),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 1, color: Colors.grey.shade200),
      ],
    );
  }
}
