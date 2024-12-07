import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/widget_messages.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  void initState()
  {
    super.initState();
    future = NewsServices(Dio()).getTopHeadlines(
      category: widget.category,
    );
  }
  @override
  Widget build(BuildContext context) {
     return FutureBuilder <List<ArticleModel>>(
         future: future,
         builder: (context, snapshot) {
           if (snapshot.hasData) {
             return NewsList(articles: snapshot.data!);
           }
           else if(snapshot.hasError)
           {
             return const Error_Message();
           }else
             {
               return const Loading_Message();
             }
         }
     );
  }
}

