class UserModel {
  final int id;
  final String userName;
  final String password;
  final String fullName;
  final String imageUrl;
  final String email;

  UserModel(
      {required this.id,
      required this.userName,
      required this.password,
      required this.fullName,
      required this.imageUrl,
      required this.email});
}
