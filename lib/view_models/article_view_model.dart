import 'package:link_dev_app/repositories/articles/article_api.dart';

import '../models/article_model.dart';

class ArticleViewModel {
  ArticleModel? articleModel;
  ArticleViewModel({this.articleModel});

  get title => articleModel!.title;
  get description => articleModel!.description;
  get url => articleModel!.url;
  get urlToImage => articleModel!.urlToImage;
  get publishedAt => articleModel!.publishedAt;
  get author => articleModel!.author;

}