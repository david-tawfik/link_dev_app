import 'package:link_dev_app/models/article_model.dart';
import 'package:link_dev_app/repositories/articles/article_repository.dart';
import 'package:link_dev_app/view_models/article_view_model.dart';

class HomeViewModel {
  String title = 'LINK DEVELOPMENT';
  String body = 'Welcome to Link Development';
  ArticleRepository? articleRepository;
  HomeViewModel({this.articleRepository});

  Future<List<ArticleViewModel>> getAllArticles() async {
    List<ArticleModel> articles = await articleRepository!.getAllArticles();
    return articles.map((article) => ArticleViewModel(articleModel: article)).toList();
  }
}