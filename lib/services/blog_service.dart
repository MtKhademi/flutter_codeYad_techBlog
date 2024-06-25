import 'package:flutter_codeyad_techblog/models/blog_model.dart';
import 'package:flutter_codeyad_techblog/services/fake_database_service.dart';

class BlogService {
  Future<List<BlogModel>> getBlogsAsync() async =>
      await FakeDatabaseService().getBlogModelsAsync();
}
