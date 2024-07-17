import 'package:link_dev_app/repositories/articles/article_repository.dart';

import '../../models/article_model.dart';

class ArticleTest extends ArticleRepository {
  @override
  Future<List<ArticleModel>> getAllArticles() async {
    List<ArticleModel> articles = [];
    try {
      var response = {
        "status": "ok",
        "source": "the-next-web",
        "sortBy": "top",
        "articles": [
          {
            "author": "Ioanna Lykiardopoulou",
            "title":
                "Rapid delivery giant Getir quits France, citing regulation hurdles",
            "description":
                "Quick commerce platform Getir is bidding adieu to the French market — less than two years since starting its operations in the country.\r\n\r\nIn a press release sent to AFP, the company ...",
            "url":
                "http://thenextweb.com/news/quick-delivery-giant-getir-quits-france",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2FUntitled-design-3-11.jpg&signature=01a135e05b853a78b83268994e4f2cbf",
            "publishedAt": "2023-06-22T11:21:08Z"
          },
          {
            "author": "Siôn Geschwindt",
            "title":
                "Mobility giant Bolt adopts self-driving Starship robots for food delivery",
            "description":
                "Bolt plans to roll out thousands of the robots across multiple countries, starting in its home city of Tallinn later this year.",
            "url":
                "http://thenextweb.com/news/mobility-giant-bolt-adopts-self-driving-starship-robots-for-food-delivery",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2Fbolt-starship-robot-delivery.jpg&signature=c902ce701ce95e20f6fd703a50ad52ca",
            "publishedAt": "2023-06-22T09:17:15Z"
          },
          {
            "author": "Ioanna Lykiardopoulou",
            "title":
                "This startup gives your speech a new 'human-realistic' AI voice — for free",
            "description":
                "From virtual assistants to voiceovers for audiobooks, AI voice generation has emerged as a rapidly growing field — and it’s no wonder that companies are rushing to tap into the ...",
            "url":
                "http://thenextweb.com/news/this-startup-gives-your-speech-new-human-realistic-ai-voice-for-free",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2FUntitled-design-3-10.jpg&signature=00f248c68c2b3cfc8673a040d6097c35",
            "publishedAt": "2023-06-21T13:30:20Z"
          },
          {
            "author": "Thomas Macaulay",
            "title":
                "A metaverse network plots an escape from Meta's 'walled gardens'",
            "description":
                "Improbable has launched a \"network of metaverses\" that eyes connected virtual worlds outside Meta's 'walled gardens'",
            "url":
                "http://thenextweb.com/news/improbable-metaverse-network-m2-connected-virtual-worlds-outside-metas-walled-gardens",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2FUntitled-design-7-1.jpg&signature=d39f71ac2f38f0ce47cf0df5a49c588d",
            "publishedAt": "2023-06-21T11:54:26Z"
          },
          {
            "author": "Sandra O Connell",
            "title":
                "New pay transparency regulations could help women negotiate better salaries",
            "description":
                "The EU’s new pay transparency directive won’t close the gender pay gap by itself. But it will help.\r\n\r\nAfter all, if you want to close the gender wage gap you first have to have ...",
            "url":
                "http://thenextweb.com/news/new-pay-transparency-regulations-could-help-women-negotiate-better-salaries",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2FAdd-a-heading-2-2.jpg&signature=a36f59f5a303e5a3a72bb0f4800c9e8d",
            "publishedAt": "2023-06-21T07:49:33Z"
          },
          {
            "author": "Linnea Ahlgren",
            "title":
                "3D-printed rocket engine revs up for orbital launch in Scotland",
            "description":
                "Edinburgh-based aerospace startup Skyrora announced yesterday it had commenced a series of full-duration tests of its updated 3D-printed 70kN engine. \r\n\r\nThe new design features an ...",
            "url":
                "http://thenextweb.com/news/3d-printed-rocket-engine-revs-up-orbital-launch-scotland",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2F70-kn-engine-1-1-1024x576-1-e1687258568667.jpg&signature=e504e335f8babf0e24721de9198d4fb6",
            "publishedAt": "2023-06-20T12:00:47Z"
          },
          {
            "author": "Ioanna Lykiardopoulou",
            "title": "EU's EV battery ambitions hang in the balance",
            "description":
                "The EU risks falling short of its ambition to become a global superpower in EV battery production, a report by the European Court of Auditors (ECA) warns.\r\n\r\nAlthough the union’s ...",
            "url":
                "http://thenextweb.com/news/eus-ev-battery-ambitions-hang-in-balance",
            "urlToImage":
                "https://img-cdn.tnwcdn.com/image/tnw-blurple?filter_last=1&fit=1280%2C640&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2023%2F06%2FUntitled-design-3-9.jpg&signature=2db23376724348af38eed1aba747e484",
            "publishedAt": "2023-06-20T11:19:39Z"
          }
        ]
      };
      var data = response['articles'] as List;
      articles = data.map((article) => ArticleModel.fromJson(article)).toList();
    } catch (e) {
      print(e);
    }
    return Future.value(articles);
  }
}
