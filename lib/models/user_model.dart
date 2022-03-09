class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoUrl;
  String token;

  UserModel(
      {this.email,
      this.id,
      this.name,
      this.profilePhotoUrl,
      this.token,
      this.username});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    token = json['token'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'token': token,
      'profile_photo_url': profilePhotoUrl  ,
    };
  }
}
