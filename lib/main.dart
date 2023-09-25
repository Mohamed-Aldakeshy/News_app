import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
// WebViewController urlFunction({required String articleModel}) {
//   final controller = WebViewController()
//     ..setJavaScriptMode(JavaScriptMode.disabled)
//     ..loadRequest(Uri.parse(articleModel));

//   return controller;
// }