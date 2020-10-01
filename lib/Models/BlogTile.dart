import 'package:flutter/material.dart';
import 'package:news_app/Screens/WebView.dart';

class BlogTile extends StatelessWidget {
  final String imageURL;
  final String title;
  final String description;
  final String url;
  BlogTile(
      {@required this.imageURL,
      @required this.title,
      @required this.description,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebArticeView(
                      url,
                    )));
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 16),
          child: (imageURL != null || description != null)
              ? Column(
                  children: [
                    ClipRRect(
                      child: FadeInImage(
                          placeholder: AssetImage('assets/images/foto.jpg'),
                          image: NetworkImage(imageURL)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      description,
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              : Container(
                  child: Center(
                    child: Text('No news Available for this Category'),
                  ),
                )),
    );
  }
}
