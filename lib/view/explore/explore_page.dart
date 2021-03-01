
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:haber/view/explore/sub_pages/articles_page.dart';
import 'package:haber/view/explore/sub_pages/news_page.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  PageController _pageController;
  var _pageViewListener = ValueNotifier<double>(0.0);
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      _pageViewListener.value = _pageController.page;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [buildSliverAppBar()];
        },
        body: PageView(
          controller: _pageController,
          pageSnapping: true,
          children: [
            ExploreNewsPage(),
            ExploreArticlesPage(),
          ],
        ),
      ),
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.grey.shade100,
      floating: true,
      snap: true,
      pinned: true,
      centerTitle: false,
      title: Text(
        'Keşfet',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 8),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.black,
                cursorRadius: Radius.circular(32),
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 12, bottom: 0, top: 0),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Haber, Makale veya Başlık Ara',
                  hintText: 'Haber, Makale veya Başlık Ara',
                  labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade300),
                  alignLabelWithHint: false,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black87),
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  buildSubCategorySelectableItem(0, 'Haberler'),
                  SizedBox(width: 24),
                  buildSubCategorySelectableItem(1, 'Makaleler'),
                ],
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(96),
      ),
    );
  }

  Widget buildSubCategorySelectableItem(int id, String title) {
    return ValueListenableBuilder<double>(
      valueListenable: _pageViewListener,
      builder: (context, value, child) {
        bool isActive = value.round() == id;
        return GestureDetector(
          onTap: () {
            _pageController.animateToPage(id, duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: isActive ? Colors.red : Colors.transparent,
                ),
              ),
            ),
            padding: const EdgeInsets.only(bottom: 8, left: 4, right: 4),
            child: Text('$title'),
          ),
        );
      },
    );
  }
}
