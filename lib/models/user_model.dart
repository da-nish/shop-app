class User {
  String name;
  String email;
  String phone;
  User({this.name = "", this.email = "", this.phone = ""});
  @override
  String toString() {
    return "name: $name, email: $email, phone: $phone";
  }
}
