import 'package:flutter/material.dart';
import 'package:link_dev_app/view_models/article_view_model.dart';
import 'package:link_dev_app/view_models/home_view_model.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:link_dev_app/views/home/article_screen_view.dart';
import 'package:link_dev_app/views/home/article_view.dart';
import 'package:link_dev_app/views/home/drawer_view.dart';
import '../../repositories/articles/article_api.dart';
import 'package:intl/intl.dart';

import '../../repositories/articles/article_test.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({super.key});
  var homeViewModel = HomeViewModel(articleRepository: ArticleTest());
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  @override
  Widget build(BuildContext context) {
    homeViewModel.getAllArticles();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const ImageIcon(AssetImage('assets/images/search.png')),
            onPressed: () {},
          ),
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
        title: Text(
          homeViewModel.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      drawer: !kIsWeb ? const Drawer(child: DrawerView()) : null,
      body: Center(
        child: Row(children: [
          if (kIsWeb)
            const SizedBox(
              width: 200,
              child: DrawerView(),
            ),
          Expanded(
            child: FutureBuilder<List<ArticleViewModel>>(
              future: homeViewModel.getAllArticles(),
              builder: (context, snapshot) => snapshot.connectionState ==
                      ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : GridView.count(
                      crossAxisCount: isMobile(context)
                          ? 1
                          : kIsWeb && MediaQuery.of(context).size.width > 1000
                              ? 3
                              : 2,
                      children: List.generate(snapshot.data!.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ArticleScreenView(
                                        articleViewModel:
                                            snapshot.data![index])),
                              );
                            },
                            child: ArticleView(
                              isScreen: false,
                              title: snapshot.data![index].title,
                              author: snapshot.data![index].author,
                              description: snapshot.data![index].description,
                              date: DateFormat.yMMMd()
                                  .format((snapshot.data![index].publishedAt)),
                              imageUrl: snapshot.data![index].urlToImage,
                            ),
                          ),
                        );
                      }),
                    ),
            ),
          ),
        ]),
      ),
    );
  }
}
