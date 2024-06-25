import 'package:flutter_codeyad_techblog/models/hash_tag_model.dart';
import 'package:flutter_codeyad_techblog/services/fake_database_service.dart';

class HashTagService {
  Future<List<HashTagModel>> getHasTagsAsync() async =>
      await FakeDatabaseService().getHashTagListAsync();
}
