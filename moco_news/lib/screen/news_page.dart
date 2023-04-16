import 'package:flutter/material.dart';
import 'package:moco_news/model/model.dart';
import 'package:moco_news/utils/utils.dart';
import 'package:moco_news/widget/carousel_widget.dart';
import 'package:moco_news/widget/tabbar_menu.dart';

class NewsPage extends StatefulWidget {
  final List<Article> article;

  const NewsPage({Key? key, required this.article}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("MOCO", style: titleHome),
          ),
          CarouselWidget(articleList: widget.article),
          TabBarMenu(articles: widget.article),
        ],
      ),
    );
  }
}
