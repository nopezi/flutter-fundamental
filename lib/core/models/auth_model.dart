class auth_model {
  int status;
  String message;
  Data data;

  auth_model({this.status, this.message, this.data});

  auth_model.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status']  = this.status;
    data['message'] = this.message;

    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String username;
  String email;

  Data({this.id, this.username, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    id       = json['id'];
    username = json['username'];
    email    = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id']       = this.id;
    data['username'] = this.username;
    data['email']    = this.email;
    return data;
  }
}