import 'package:flutter/material.dart';
import 'package:link_dev_app/view_models/article_view_model.dart';
class ArticleView extends StatelessWidget {
  final bool isScreen;
  final String title;
  final String author;
  final String date;
  final String imageUrl;
  final String? description;
  ArticleView({super.key, required this.isScreen,required this.title, required this.author,required this.date,required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(image: NetworkImage(imageUrl), width: double.infinity,height: 200, fit: BoxFit.cover
            ),
            if (isScreen)
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.94,),
                child: Text(date,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                  ),
              ),
            )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top:10.0, bottom: 5.0, left: 16.0),
            child: Text(title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
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
          isScreen && description!=null?
                    Padding(
            padding: EdgeInsets.only(bottom: 5.0, left: 16.0),
            child: Text(description!,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
            ),
          )
          :

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