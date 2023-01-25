class User {
  int? id;
  String? email;
  String? password;
  String? confirmPassword;

  User({this.id, this.email, this.password, this.confirmPassword});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['password'] = password;
    data['confirmPassword'] = confirmPassword;
    return data;
  }
}
