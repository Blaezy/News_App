import 'dart:convert';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3c8d233b91aa43d8bb65986c013fef6a";
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body) as Map<String, dynamic>;
    print(jsondata);
    if (jsondata['status'] == 'ok') {
      news = (jsondata['articles'] as List<dynamic>)
          .map((e) => ArticleModel(
              author: e['author'],
              content: e['content'],
              desc: e['description'],
              title: e['title'],
              urlToImage: e['urlToImage'],
              url: e['url'],
              publishedAt: e['publishedAt']))
          .toList();

      // jsondata['articles'].foreach((element) {
      //   if (element['urlToImage'] != null && element['content'] != null) {
      //     ArticleModel article = ArticleModel(
      //         author: element['author'],
      //         content: element['content'],
      //         publishedAt: element['publishedAt'],
      //         title: element['title'],
      //         url: element['url'],
      //         urlToImage: element['urlToImage']);

    }
  }
}
