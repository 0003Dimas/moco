import 'package:flutter/material.dart';
import 'package:moco_news/model/model.dart';
import 'package:moco_news/screen/news_page.dart';
import 'package:moco_news/service/service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = News();
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          width: 16,
          margin: const EdgeInsets.all(8),
        ),
        title: const Text(
          "Hi, Dimas",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout, color: Colors.blue),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: name.getNews(),
        builder: (context, snapshot) => snapshot.data != null
            ? NewsPage(article: snapshot.data as List<Article>)
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
