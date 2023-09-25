import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list-view-builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: categoryName,
          ),
        ],
      ),
    );
  }
}
