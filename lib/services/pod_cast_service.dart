import 'package:flutter_codeyad_techblog/models/pod_cast_model.dart';
import 'package:flutter_codeyad_techblog/services/fake_database_service.dart';

class PodCastService {
  Future<List<PodCastModel>> getPodCastsAsync() async {
    return await FakeDatabaseService().getPodCastsAsync();
  }
}
