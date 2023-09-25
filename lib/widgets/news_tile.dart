import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return WebViewPage(
                    theThing: articleModel.urlLink,
                  );
                },
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFE817hzejgTXCXpqgQAaLG7CVoC5jimBqvw&usqp=CAU',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? 'the subTitle is null in the api',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}


// Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) {
//                   return WebViewPage(
//                     theThing: articleModel.urlLink,
//                   );
//                 },
//               ),
//             );