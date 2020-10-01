import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String imageURL;
  final String title;
  final String description;
  BlogTile(
      {@required this.imageURL,
      @required this.title,
      @required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(imageURL),
            borderRadius: BorderRadius.circular(10),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          Text(
            description,
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }
}
