import 'package:flutter/material.dart';
import 'package:news_app/Data/news.dart';
import 'package:news_app/Models/ArticleModel.dart';
import 'package:news_app/Models/BlogTile.dart';

class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews(this.category);
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> newsList = new List<ArticleModel>();
  bool _isLoading = true;

  getCategoryNews() async {
    CategoryNewz categoryClass = CategoryNewz();
    await categoryClass.getCategoryNews(widget.category);
    newsList = categoryClass.categoryNews;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.category),
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
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    print(newsList[index].urlToImage);
                    print(newsList[index].title);
                    print(newsList[index].desc);
                    print(newsList[index].url);
                    return BlogTile(
                      imageURL: newsList[index].urlToImage,
                      title: newsList[index].title,
                      description: newsList[index].desc,
                      url: newsList[index].url,
                    );
                  }),
            ),
    );
  }
}
