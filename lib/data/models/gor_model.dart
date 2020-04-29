class Gor {
  Gor(this.prefix, this.firstName, this.lastName, this.designation);

  final String prefix;
  final String firstName;
  final String lastName;
  final String designation;
}

class GorModel {
  String alamatGor;
  String createdAt;
  int id;
  String namaGor;
  String updatedAt;
  User user;
  int userId;

  GorModel(
      {this.alamatGor,
      this.createdAt,
      this.id,
      this.namaGor,
      this.updatedAt,
      this.user,
      this.userId});

  GorModel.fromJson(Map<String, dynamic> json) {
    alamatGor = json['alamat_gor'];
    createdAt = json['created_at'];
    id = json['id'];
    namaGor = json['nama_gor'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alamat_gor'] = this.alamatGor;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['nama_gor'] = this.namaGor;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['user_id'] = this.userId;
    return data;
  }
}

class User {
  String email;
  int id;
  String name;

  User({this.email, this.id, this.name});

  User.fromJson(Map<String, dynamic> json) {
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
