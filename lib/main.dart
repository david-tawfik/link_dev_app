import 'package:flutter/material.dart';
import 'package:link_dev_app/views/home/home_screen_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey[100],
      home: HomeScreenView(),
    );
  }
}
