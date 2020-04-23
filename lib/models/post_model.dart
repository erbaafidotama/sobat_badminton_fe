class LoginModel {
  String message;
  int status;
  Values values;

  LoginModel({this.message, this.status, this.values});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    values =
        json['values'] != null ? new Values.fromJson(json['values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.values != null) {
      data['values'] = this.values.toJson();
    }
    return data;
  }
}

class Values {
  Data data;
  String tokenAccess;
  String tokenRefresh;

  Values({this.data, this.tokenAccess, this.tokenRefresh});

  Values.fromJson(Map<String, dynamic> json) {
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
