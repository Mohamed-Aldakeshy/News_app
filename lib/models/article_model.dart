class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String urlLink;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.urlLink});
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      urlLink: json['url'],
    );
  }
}
