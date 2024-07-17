import 'package:dio/dio.dart';
import 'package:link_dev_app/repositories/articles/article_repository.dart';

import '../../models/article_model.dart';

class ArticleAPI extends ArticleRepository
{
  @override
  Future<List<ArticleModel>> getAllArticles() async{
    List<ArticleModel> articles=[];
    try{
      var response= await Dio().get('https://newsapi.org/v1/articles?source=the-next-web&apiKey=1c0f731cca954a13875e6965f9c7e9de');
      var data=response.data['articles'] as List;
      articles = data.map((article)=> ArticleModel.fromJson(article)).toList();
    }
    catch(e){
      print(e);
    }
    return articles;

  }

  // @override
  // Future<ArticleModel> getArticleById(int id) {

  // }
}