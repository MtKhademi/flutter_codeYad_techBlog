import 'package:flutter_codeyad_techblog/models/article_model.dart';
import 'package:flutter_codeyad_techblog/services/fake_database_service.dart';

class ArticleService {
  Future<ArticleModel> getHomeArticleAsync() async =>
      await FakeDatabaseService().getArticleHomePage();
}
