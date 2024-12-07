import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices
{
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async
  {
    try {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=6d9bac74cf0043409d60aae1f5020b89&category=$category');
      Map <String,dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      
      for(var article in articles)
        {
          ArticleModel articleModel = ArticleModel(
              image: article['urlToImage'],
              title: article['title'],
              subTitle: article['description'],
              source: Source (id: article['source']['id'],
              name: article['source']['name'],
              ),
          );
          articlesList.add(articleModel);
        }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

}