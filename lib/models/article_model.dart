class ArticleModel
{
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? author;

  ArticleModel({this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.author});
  ArticleModel.fromJson(Map<String, dynamic> json)
  {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = DateTime.parse(json['publishedAt']);
    author = json['author'];
  }
}