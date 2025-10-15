// ignore_for_file: unnecessary_this

class AppUser {
  String? id;
  String? email;
  String? password;
  String? name;
  String? fcmToken;

  AppUser({this.id, this.email, this.password, this.name});

  toJson() {
    return {
      "name": name ?? "",
      "email": email ?? "",
      "password": password ?? "",
    };
  }

  AppUser.fromJson(json) {
    this.name = json['name'] ?? "";
    this.email = json['email'] ?? "";
    this.password = json['password'] ?? "";
  }
}
