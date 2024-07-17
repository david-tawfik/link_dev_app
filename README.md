# link_dev_app
Used repository design principle to be able to retrieve the response offline by creating an abstract class (ArticleRepository) with 2 children (ArticleAPI,ArticleTest)
all you need to do is to inject the desired repository in the home_screen_view.dart file by changing the following line
# to use the offline repo
var homeViewModel = HomeViewModel(articleRepository: ArticleTest()); 
# to call the api
var homeViewModel = HomeViewModel(articleRepository: ArticleAPI()); 
