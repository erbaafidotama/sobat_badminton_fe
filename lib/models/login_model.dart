class LoginModel {
  Data data;
  String tokenAccess;
  String tokenRefresh;

  LoginModel({this.data, this.tokenAccess, this.tokenRefresh});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    tokenAccess = json['token_access'];
    tokenRefresh = json['token_refresh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['token_access'] = this.tokenAccess;
    data['token_refresh'] = this.tokenRefresh;
    return data;
  }
}

class Data {
  String email;
  int id;
  String name;

  Data({this.email, this.id, this.name});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
