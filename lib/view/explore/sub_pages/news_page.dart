
import 'package:flutter/material.dart';
import 'package:haber/core/widgets/horizontal_source_card.dart';
import 'package:haber/core/widgets/square_source_card.dart';

class ExploreNewsPage extends StatefulWidget {
  @override
  _ExploreNewsPageState createState() => _ExploreNewsPageState();
}

class _ExploreNewsPageState extends State<ExploreNewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text('Önerilerimiz', style: TextStyle(fontSize: 24)),
          SizedBox(height: 24),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SquareSourceCard(
                  title: 'Uluslararası Haber Servisi',
                  image: 'https://yt3.ggpht.com/ytc/AAUvwnjBlgpqjPiSIKs7WEOaa7K_Mnd7FaTNQZlOvOfNWg=s900-c-k-c0x00ffffff-no-rj',
                ),
                SquareSourceCard(
                  title: 'Dünyanın Bir Numaralı Popüler Bilim Dergisi',
                  image: 'https://cdn-images.threadless.com/threadless-media/artist_shops/shops/popsci/profile/logo-1513620739-62729851e5a0657a76fa09514521d2c3.png?v=3&d=eyJvbmx5X21ldGEiOiBmYWxzZSwgImZvcmNlIjogZmFsc2UsICJvcHMiOiBbWyJyZXNpemUiLCBbMzUwXSwge31dXX0=',
                ),
                SquareSourceCard(
                  title: 'Türkiyenin Haberleri',
                  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ5ZL7ldX-LlDnyFI8bY5f89oL2aIms-HAgQ&usqp=CAU',
                ),
                SquareSourceCard(
                  title: 'Uluslararası Haber Servisi',
                  image: 'https://yt3.ggpht.com/ytc/AAUvwnjBlgpqjPiSIKs7WEOaa7K_Mnd7FaTNQZlOvOfNWg=s900-c-k-c0x00ffffff-no-rj',
                ),
                SquareSourceCard(
                  title: 'Dünyanın Bir Numaralı Popüler Bilim Dergisi',
                  image: 'https://cdn-images.threadless.com/threadless-media/artist_shops/shops/popsci/profile/logo-1513620739-62729851e5a0657a76fa09514521d2c3.png?v=3&d=eyJvbmx5X21ldGEiOiBmYWxzZSwgImZvcmNlIjogZmFsc2UsICJvcHMiOiBbWyJyZXNpemUiLCBbMzUwXSwge31dXX0=',
                ),
                SquareSourceCard(
                  title: 'Türkiyenin Haberleri',
                  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ5ZL7ldX-LlDnyFI8bY5f89oL2aIms-HAgQ&usqp=CAU',
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text('Popüler Mecralar', style: TextStyle(fontSize: 24)),
          SizedBox(height: 24),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HorizontalSourceCard(
                      title: 'Shiftdelete',
                      followers: '155b',
                      following: true,
                      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7kp51cCfSOshG7H21k_0bS5rRkibfzZNK8Q&usqp=CAU',
                    ),
                    HorizontalSourceCard(
                      title: 'Bu neymiş',
                      followers: '44b',
                      following: false,
                      image: 'https://i.pinimg.com/originals/a1/c6/01/a1c601eea29a1242722f9ff74d9efccf.jpg',
                    ),
                    HorizontalSourceCard(
                      title: 'NewsLab Turkey',
                      followers: '102b',
                      following: false,
                      image: 'https://www.thegeniusworks.com/wp-content/uploads/2015/10/Square-logo.png',
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HorizontalSourceCard(
                      title: 'Youtube',
                      followers: '10m',
                      following: false,
                      image: 'https://seeklogo.com/images/Y/youtube-square-logo-3F9D037665-seeklogo.com.png',
                    ),
                    HorizontalSourceCard(
                      title: 'Haberr',
                      followers: '10b',
                      following: true,
                      image: 'https://uploads.turbologo.com/uploads/design/preview_image/32861/preview_image20200913-17072-rwjfka.png',
                    ),
                    HorizontalSourceCard(
                      title: 'NewsLab Turkey',
                      followers: '102b',
                      following: true,
                      image: 'https://www.thegeniusworks.com/wp-content/uploads/2015/10/Square-logo.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text('Teknoloji', style: TextStyle(fontSize: 24)),
          SizedBox(height: 24),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Webrazzi')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('LOG Dergisi')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('ShiftDelete.Net')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Donanım Haber')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('DigitalTalks')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Tümünü Gör',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 12),
              Icon(Icons.arrow_forward, size: 20, color: Colors.red),
            ],
          ),
          SizedBox(height: 48),
          Text('İş & Finans', style: TextStyle(fontSize: 24)),
          SizedBox(height: 24),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Big Para')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Uzmanpara')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Bloomberg HT')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Fortune Türkiye')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          Container(
            height: 42,
            child: Row(
              children: [
                Expanded(child: Text('Hürriyet Ekonomi')),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Text('Ekle'),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: .5),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade200),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Tümünü Gör',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 12),
              Icon(Icons.arrow_forward, size: 20, color: Colors.red),
            ],
          )
        ],
      ),
    );
  }
}
