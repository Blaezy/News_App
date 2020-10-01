import 'dart:convert';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Screens/CategoryScreen.dart';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3c8d233b91aa43d8bb65986c013fef6a";
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body) as Map<String, dynamic>;
    print(jsondata);

    if (jsondata['status'] == 'ok') {
      jsondata['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
              author: element['author'],
              content: element['content'],
              publishedAt: element['publishedAt'],
              title: element['title'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              desc: element['description']);
          news.add(article);
        }
      });
      // if (jsondata['status'] == 'ok') {
      //   news = (jsondata['articles'] as List<dynamic>)
      //       .map((e) => ArticleModel(
      //           author: e['author'],
      //           content: e['content'],
      //           desc: e['description'],
      //           title: e['title'],
      //           urlToImage: e['urlToImage'] != null
      //               ? e['urlToImage']
      //               : 'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png',
      //           url: e['url'],
      //           publishedAt: e['publishedAt']))
      //       .toList();

      // jsondata['articles'].foreach((element) {
      // if (element['urlToImage'] != null && element['content'] != null) {
      // ArticleModel article = ArticleModel(
      //     author: element['author'],
      //     content: element['content'],
      //     publishedAt: element['publishedAt'],
      //     title: element['title'],
      //     url: element['url'],
      //     urlToImage: element['urlToImage']);

    }
  }
}

class CategoryNewz {
  List<ArticleModel> categoryNews = [];
  Future<void> getCategoryNews(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=3c8d233b91aa43d8bb65986c013fef6a";
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body) as Map<String, dynamic>;
    // print('Shivam');
    // print(jsondata['articles']);
    // if (jsondata['status'] == 'ok') {
    //   categoryNews = (jsondata['articles'] as List<dynamic>).map((e) {
    //     if (e['urlToImage'] != null &&
    //         e['description'] != null &&
    //         e['content'] != null)
    //       return ArticleModel(
    //           author: e['author'],
    //           content: e['content'],
    //           desc: e['description'],
    //           title: e['title'],
    //           urlToImage: e['urlToImage'],
    //           url: e['url'],
    //           publishedAt: e['publishedAt']);
    //   }).toList();
    // }

    if (jsondata['status'] == 'ok') {
      jsondata['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
              author: element['author'],
              content: element['content'],
              publishedAt: element['publishedAt'],
              title: element['title'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              desc: element['description']);
          categoryNews.add(article);
        }
      });
    }
  }
}
