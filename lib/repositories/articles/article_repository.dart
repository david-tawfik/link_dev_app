import '../../models/article_model.dart';

abstract class ArticleRepository {
  Future<List<ArticleModel>> getAllArticles();
  // Future<ArticleModel> getArticleById(int id);
}