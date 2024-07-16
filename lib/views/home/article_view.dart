import 'package:flutter/material.dart';
import 'package:link_dev_app/view_models/article_view_model.dart';
class ArticleView extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String imageUrl;
  ArticleView({super.key, required this.title, required this.author,required this.date,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: NetworkImage(imageUrl), width: double.infinity,height: 200, fit: BoxFit.cover
          ),
          Padding(
            padding: EdgeInsets.only(top:10.0, bottom: 5.0, left: 16.0),
            child: Text(title,
            style: TextStyle(
              fontSize: 18,
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0, left: 16.0),
            child: Text('By $author',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
            padding: EdgeInsets.only(right: 16.0),
              child: Text(date,
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[600],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}