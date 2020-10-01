import 'package:flutter/material.dart';
import 'package:news_app/Data/data.dart';
import 'package:news_app/Data/news.dart';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:news_app/Models/BlogTile.dart';
import 'package:news_app/Models/CategoryModel.dart';
import 'package:news_app/Models/CategoryTile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> newsList = new List<ArticleModel>();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getNews();
    categories = getCategoryModel();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    newsList = newsClass.news;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Flutter'),
            Text(
              'News',
              style: TextStyle(color: Colors.blue),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                // verticalDirection: ,
                children: [
                  Container(
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return CategoryTile(
                            categoryName: categories[index].categoryName,
                            imageUrl: categories[index].url,
                          );
                        }),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: newsList.length,
                          itemBuilder: (context, index) {
                            // print(newsList.length);
                            return BlogTile(
                              imageURL: newsList[index].urlToImage,
                              title: newsList[index].title,
                              description: newsList[index].desc,
                              url: newsList[index].url,
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
