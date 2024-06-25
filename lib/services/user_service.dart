import 'package:flutter_codeyad_techblog/models/user_model.dart';
import 'package:flutter_codeyad_techblog/services/fake_database_service.dart';

class UserService {
  Future<UserModel> loginAsync(String userName, String password) async {
    var users = await FakeDatabaseService().getUsersAsync();
    var userFind =
        users.where((us) => us.userName == userName && us.password == password);
    return userFind.first;
  }
}
