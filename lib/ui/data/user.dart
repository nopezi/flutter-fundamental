class DataUserCoba {
  int id;
  String name;
  String username;
  String email;
  // Address address;
  String phone;

  DataUserCoba.fromJsonMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        username = map["username"],
        email = map["email"],
        phone = map["phone"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    data["username"] = username;
    data["email"] = email;
    data["phone"] = phone;
    return data;
  }
}
