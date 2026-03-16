class User {
  String _username = "";
  String _password = "";
  String _email = "";

  User(this._username, this._password, this._email);

  String get username => _username;
  String get password => _password;
  String get email => _email;

  set username(String value) {
    if (value.length >= 5) {
      _username = value;
    } else {
      print("Gagal: Username minimal 5 karakter!");
    }
  }

  set password(String value) {
    if (value.length >= 8) {
      _password = value;
    } else {
      print("Gagal: Password minimal 8 karakter!");
    }
  }

  set email(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      print("Gagal: Email harus mengandung karakter '@'!");
    }
  }
}

void main() {
  var userBaru = User("faruq", "rahasia123", "faruq@mail.com");

  print("Username awal: ${userBaru.username}");

  userBaru.username = "abd"; 
  userBaru.password = "334"; 
  userBaru.email = "faruqmail.com"; 

  userBaru.username = "tajuddin";
  userBaru.password = "passwordBaru123";

  print("Data Akhir:");
  print("Username: ${userBaru.username}");
  print("Email: ${userBaru.email}");
}
