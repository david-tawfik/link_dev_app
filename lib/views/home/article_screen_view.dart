import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:link_dev_app/view_models/article_view_model.dart';
import 'package:link_dev_app/views/home/article_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleScreenView extends StatelessWidget {
  final ArticleViewModel articleViewModel;
  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(articleViewModel.url);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  ArticleScreenView({super.key, required this.articleViewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ArticleView(
              isScreen: true,
              title: articleViewModel.title,
              author: articleViewModel.author,
              description: articleViewModel.description,
              date: DateFormat.yMMMd().format(articleViewModel.publishedAt),
              imageUrl: articleViewModel.urlToImage,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.black),
                  foregroundColor:
                      MaterialStateProperty.all<Color?>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                onPressed: _launchUrl,
                child: const Text('OPEN WEBSITE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
