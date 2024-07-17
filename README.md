# link_dev_app
Used repository dp to be able to retrieve the response offline by creating an abstract class (ArticleRepository) with 2 children (ArticleAPI,ArticleTest)
all you need to do is to inject the desired repository in the home_screen_view.dart file by changing the following line
var homeViewModel = HomeViewModel(articleRepository: ArticleTest()); // this will use the offline repo
var homeViewModel = HomeViewModel(articleRepository: ArticleAPI()); // this will call the api
