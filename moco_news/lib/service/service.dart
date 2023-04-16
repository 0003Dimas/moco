import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:moco_news/model/model.dart';

String apiKey = 'f7040c8bf7a2478d9c3a7b59e579713b';
String baseUrl = 'https://newsapi.org/v2';

class News {
  Future<List<Article>?> getNews() async {
    List<Article>? list;
    String url =
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=f7040c8bf7a2478d9c3a7b59e579713b';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['articles'] as List;
      list = result.map((json) => Article.fromJson(json)).toList();
      return list;
    } else {
      throw Exception('Tidak dapat mengambil data berita');
    }
  }

  Future<List<Article>?> getNewsByCategories(String category) async {
    List<Article>? list;
    String url =
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=f7040c8bf7a2478d9c3a7b59e579713b';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['articles'] as List;
      list = result.map((json) => Article.fromJson(json)).toList();
      return list;
    } else {
      throw Exception('Tidak dapat mengambil data Category');
    }
  }
}
