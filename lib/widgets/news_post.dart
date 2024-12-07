import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: articleModel.image != null
              ? Image.network(
            articleModel.image!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: const Icon(Icons.broken_image, size: 50, color: Colors.grey),
              );
            },
          )
              : Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 50, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          articleModel.title ?? "No Title Available",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          articleModel.subTitle ?? "No Subtitle Available",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
